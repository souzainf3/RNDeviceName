//
//  Mapper.swift
//
//  Created by Romilson Nunes on 04/01/23.
//

import Foundation

/// Reference: https://www.theiphonewiki.com/wiki/Models
/*
 - List of Device Models, need to use SQLite to view the traits databases
 - Online SQLite Viewer https://inloop.github.io/sqlite-viewer/
 
 /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/usr/standalone/device_traits.db
 /Applications/Xcode.app/Contents/Developer/Platforms/WatchOS.platform/usr/standalone/device_traits.db
 /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/usr/standalone/device_traits.db
*/

// MARK: - iPhone

extension Device.iPhone: DeviceFamily {
    static var devices: [Model] {
        [(.iPhone6Plus, ["iPhone7,1"]),
         (.iPhone6S, ["iPhone8,1"]),
         (.iPhone6SPlus, ["iPhone8,2"]),
         (.iPhoneSE, ["iPhone8,4"]),
         (.iPhone7, ["iPhone9,1", "iPhone9,3"]),
         (.iPhone7Plus, ["iPhone9,2", "iPhone9,4"]),
         (.iPhone8, ["iPhone10,1", "iPhone10,4"]),
         (.iPhone8Plus, ["iPhone10,2", "iPhone10,5"]),
         (.iPhoneX, ["iPhone10,3", "iPhone10,6"]),
         (.iPhoneXS, ["iPhone11,2"]),
         (.iPhoneXSMax, ["iPhone11,4", "iPhone11,6"]),
         (.iPhoneXR, ["iPhone11,8"]),
         (.iPhone11, ["iPhone12,1"]),
         (.iPhone11Pro, ["iPhone12,3"]),
         (.iPhone11ProMax, ["iPhone12,5"]),
         (.iPhoneSE2, ["iPhone12,8"]),
         (.iPhone12Mini, ["iPhone13,1"]),
         (.iPhone12, ["iPhone13,2"]),
         (.iPhone12Pro, ["iPhone13,3"]),
         (.iPhone12ProMax, ["iPhone13,4"]),
         (.iPhone13Mini, ["iPhone14,4"]),
         (.iPhone13, ["iPhone14,5"]),
         (.iPhone13Pro, ["iPhone14,2"]),
         (.iPhone13ProMax, ["iPhone14,3"]),
         (.iPhoneSE3, ["iPhone14,6"]),
         (.iPhone14, ["iPhone14,7"]),
         (.iPhone14Plus, ["iPhone14,8"]),
         (.iPhone14Pro, ["iPhone15,2"]),
         (.iPhone14ProMax, ["iPhone15,3"]),
         (.iPhone15, ["iPhone15,4"]),
         (.iPhone15Plus, ["iPhone15,5"]),
         (.iPhone15Pro, ["iPhone16,1"]),
         (.iPhone15ProMax, ["iPhone16,2"]),

         /// iPhone 16
         (.iPhone16Pro, ["iPhone17,1"]),
         (.iPhone16ProMax, ["iPhone17,2"]),
         (.iPhone16, ["iPhone17,3"]),
         (.iPhone16Plus, ["iPhone17,4"])
        ]
    }
}


// MARK: - iPod

extension Device.iPod: DeviceFamily {
    static var devices: [Model] {
        [(.iPod7, ["iPod9,1"])]
    }
}


// MARK: - AppleTV

extension Device.AppleTV: DeviceFamily {
    static var devices: [Model] {
        [(.appleTV1, ["AppleTV1,1"]),
         (.appleTV2, ["AppleTV2,1"]),
         (.appleTV3, ["AppleTV3,1", "AppleTV3,2"]),
         (.appleTVHD, ["AppleTV5,3"]),
         (.appleTV_4K, ["AppleTV6,2"]),
         (.appleTV2_4K, ["AppleTV11,1"]),
         (.appleTV3_4K, ["AppleTV14,1"])]
    }
}


// MARK: - iPad

extension Device.iPad: DeviceFamily {
    static var devices: [Model] {
        [(.iPad, ["iPad1,1"]),
         (.iPad2, ["iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4"]),
         (.iPad3, ["iPad3,1", "iPad3,2", "iPad3,3"]),
         (.iPad4, ["iPad3,4", "iPad3,5", "iPad3,6"]),
         (.iPad5, ["iPad6,11", "iPad6,12"]),
         (.iPad6, ["iPad7,5", "iPad7,6"]),
         (.iPad7, ["iPad7,11", "iPad7,12"]),
         (.iPad8, ["iPad11,6", "iPad11,7"]),
         (.iPad9, ["iPad12,1", "iPad12,2"]),
         (.iPad10, ["iPad13,18", "iPad13,19"])]
    }
}

extension Device.iPadAir: DeviceFamily {
    static var devices: [Model] {
        [(.iPadAir, ["iPad4,1", "iPad4,2", "iPad4,3"]),
         (.iPadAir2, ["iPad5,3", "iPad5,4"]),
         (.iPadAir3, ["iPad11,3", "iPad11,4"]),
         (.iPadAir4, ["iPad13,1", "iPad13,2"]),
         (.iPadAir5, ["iPad13,16", "iPad13,17"])]
    }
}

extension Device.iPadMini: DeviceFamily {
    static var devices: [Model] {
        [(.iPadMini, ["iPad2,5", "iPad2,6", "iPad2,7"]),
         (.iPadMini2, ["iPad4,4", "iPad4,5", "iPad4,6"]),
         (.iPadMini3, ["iPad4,7", "iPad4,8", "iPad4,9"]),
         (.iPadMini4, ["iPad5,1", "iPad5,2"]),
         (.iPadMini5, ["iPad11,1", "iPad11,2"]),
         (.iPadMini6, ["iPad14,1", "iPad14,2"])]
    }
}

extension Device.iPadPro: DeviceFamily {
    static var devices: [Model] {
        [(.iPadPro9Inch, ["iPad6,3", "iPad6,4"]),
         (.iPadPro12Inch, ["iPad6,7", "iPad6,8"]),
         (.iPadPro12Inch2, ["iPad7,1", "iPad7,2"]),
         (.iPadPro10Inch, ["iPad7,3", "iPad7,4"]),
         (.iPadPro11Inch, ["iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4"]),
         (.iPadPro12Inch3, ["iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8"]),
         (.iPadPro11Inch2, ["iPad8,9", "iPad8,10"]),
         (.iPadPro12Inch4, ["iPad8,11", "iPad8,12"]),
         (.iPadPro11Inch3, ["iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7"]),
         (.iPadPro12Inch5, ["iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11"]),
         (.iPadPro11Inch4, ["iPad14,3", "iPad14,4"]),
         (.iPadPro12Inch6, ["iPad14,5", "iPad14,6"]),
         (.iPadPro11InchM2, ["iPad14,8", "iPad14,9"]),
         (.iPadPro11InchM4, ["iPad16,3-A", "iPad16,3-B", "iPad16,4-A", "iPad16,4-B"]),
         (.iPadPro13InchM4, ["iPad16,5-A", "iPad16,5-B", "iPad16,6-A", "iPad16,6-B"])]
    }
}


// MARK: - Simulator

extension Device.Default: DeviceFamily {
    static var devices: [Model] {
        [(.simulator, ["i386", "x86_64", "arm64"])]
    }
}
