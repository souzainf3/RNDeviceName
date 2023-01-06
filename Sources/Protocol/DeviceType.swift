//
//  DeviceType.swift
//
//  Created by Romilson Nunes on 05/01/23.
//

import Foundation

protocol DeviceType: Equatable {
    var marketingName: String { get }
}

extension DeviceType where Self: RawRepresentable, Self.RawValue == String {
    var marketingName: String { return self.rawValue }
}
