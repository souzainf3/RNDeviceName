//
//  Device.swift
//
//  Created by Romilson Nunes on 04/01/23.
//

import Foundation

public struct Device {
    
    /// Returns the current device.
    public static var current: Device {
        return Device(identifier: Device.identifier)
    }
    
    /// Gets the identifier from the system, such as "iPhone14,4".
    public var identifier: String
    
    /// Gets the marketing name from device, such as "iPhone 13 mini".
    public var marketingName: String { self.model.marketingName }
    
    private var model: any DeviceType {
        return self.deviceFromIdentifier(self.identifier)
    }
}

extension Device {
    
    static var families: [any DeviceFamily.Type] {
        [Default.self, // simulator, unknow
         iPod.self,
         iPhone.self,
         iPad.self,
         iPadAir.self,
         iPadMini.self,
         iPadPro.self,
         AppleTV.self]
    }
    
    static var identifier: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let mirror = Mirror(reflecting: systemInfo.machine)
        
        let identifier = mirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {
                return identifier
            }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        return identifier
    }
    
    static func deviceFromIdentifier(_ identifier: String) -> any DeviceType {
        return self.families.firstMap { family in
            family.devices.first(where: { device in
                device.identifiers.contains(where: { $0 == identifier })
            })
        }?.type ?? Default.unknown(identifier)
    }
    
    func deviceFromIdentifier(_ identifier: String) -> any DeviceType {
        let device = Self.deviceFromIdentifier(identifier)
        
        if case Default.simulator = device,
           let simulatorModelIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
            return Self.deviceFromIdentifier(simulatorModelIdentifier)
        }
        
        return device
    }
}


// MARK: - Array

extension Array {
    func firstMap<Transform>(transform: (Element) -> Transform?) -> Transform? {
        var value: Transform?
        
        forEach { element, stop in
            guard let newValue = transform(element) else { return }
            value = newValue
            stop = true
        }

        return value
    }
    
    func forEach(body: ((Self.Iterator.Element, inout Bool) -> Void)) {
        var stop = false
        for value in self {
            if stop { break }
            body(value,&stop)
        }
    }
}

