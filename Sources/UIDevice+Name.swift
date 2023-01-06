//
//  File.swift
//  
//
//  Created by Romilson Nunes on 05/01/23.
//

#if canImport(UIKit)
import UIKit

public extension UIDevice {
    /// Gets the marketing name from device, such as "iPhone 13 mini".
    @objc var marketingName: String { Device.current.marketingName }
}
#endif
