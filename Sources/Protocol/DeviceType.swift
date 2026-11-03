//
//  DeviceType.swift
//
//  Created by Romilson Nunes on 05/01/23.
//

import Foundation

public protocol DeviceType: Equatable {
    var marketingName: String { get }
}

public extension DeviceType where Self: RawRepresentable, Self.RawValue == String {
    var marketingName: String { return self.rawValue }
}

public func == (lhs: any DeviceType, rhs: any DeviceType) -> Bool {
    return lhs.marketingName == rhs.marketingName
}
