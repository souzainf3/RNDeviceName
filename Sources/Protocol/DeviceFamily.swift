//
//  DeviceFamily.swift
//
//  Created by Romilson Nunes on 04/01/23.
//

import Foundation

protocol DeviceFamily where Self: DeviceType {
    typealias Model = (type: Self, identifiers: [String])

    static var devices: [Model] { get }
}
