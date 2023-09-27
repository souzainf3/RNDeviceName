//
//  Mapper.swift
//  
//
//  Created by Romilson Nunes on 04/01/23.
//

import Foundation

extension Device {

    // MARK: - iPod
    
    enum iPod : String, DeviceType {
        case iPod1 = "iPod touch"
        case iPod2 = "iPod touch (2nd generation)"
        case iPod3 = "iPod touch (3rd generation)"
        case iPod4 = "iPod touch (4th generation)"
        case iPod5 = "iPod touch (5th generation)"
        case iPod6 = "iPod touch (6th generation)"
        case iPod7 = "iPod touch (7th generation)"
    }
    
    
    // MARK: - iPhone
    
    /// https://support.apple.com/en-us/HT201296
    enum iPhone : String, DeviceType {
        case iPhone4            = "iPhone 4"
        case iPhone4S           = "iPhone 4S"
        case iPhone5            = "iPhone 5"
        case iPhone5S           = "iPhone 5S"
        case iPhone5C           = "iPhone 5C"
        case iPhone6            = "iPhone 6"
        case iPhone6Plus        = "iPhone 6 Plus"
        case iPhone6S           = "iPhone 6S"
        case iPhone6SPlus       = "iPhone 6S Plus"
        case iPhoneSE           = "iPhone SE"
        case iPhone7            = "iPhone 7"
        case iPhone7Plus        = "iPhone 7 Plus"
        case iPhone8            = "iPhone 8"
        case iPhone8Plus        = "iPhone 8 Plus"
        case iPhoneX            = "iPhone X"
        case iPhoneXS           = "iPhone XS"
        case iPhoneXSMax        = "iPhone XS Max"
        case iPhoneXR           = "iPhone XR"
        case iPhone11           = "iPhone 11"
        case iPhone11Pro        = "iPhone 11 Pro"
        case iPhone11ProMax     = "iPhone 11 Pro Max"
        case iPhoneSE2          = "iPhone SE (2nd generation)"
        case iPhone12Mini       = "iPhone 12 Mini"
        case iPhone12           = "iPhone 12"
        case iPhone12Pro        = "iPhone 12 Pro"
        case iPhone12ProMax     = "iPhone 12 Pro Max"
        case iPhone13Mini       = "iPhone 13 Mini"
        case iPhone13           = "iPhone 13"
        case iPhone13Pro        = "iPhone 13 Pro"
        case iPhone13ProMax     = "iPhone 13 Pro Max"
        case iPhoneSE3          = "iPhone SE (3rd generation)"
        case iPhone14           = "iPhone 14"
        case iPhone14Plus       = "iPhone 14 Plus"
        case iPhone14Pro        = "iPhone 14 Pro"
        case iPhone14ProMax     = "iPhone 14 Pro Max"
        case iPhone15           = "iPhone 15"
        case iPhone15Plus       = "iPhone 15 Plus"
        case iPhone15Pro        = "iPhone 15 Pro"
        case iPhone15ProMax     = "iPhone 15 Pro Max"
    }
    
    
    // MARK: - iPad
    
    /// https://support.apple.com/en-us/HT201471#ipad
    enum iPad : String, DeviceType {
        case iPad               = "iPad"
        case iPad2              = "iPad 2"
        case iPad3              = "iPad (3rd generation)"
        case iPad4              = "iPad (4th generation)"
        case iPad5              = "iPad (5th generation)"
        case iPad6              = "iPad (6th generation)"
        case iPad7              = "iPad (7th generation)"
        case iPad8              = "iPad (8th generation)"
        case iPad9              = "iPad (9th generationn)"
        case iPad10             = "iPad (10th generation)"
    }
    
    /// https://support.apple.com/en-us/HT201471#ipadair
    enum iPadAir : String, DeviceType {
        case iPadAir            = "iPad Air"
        case iPadAir2           = "iPad Air 2"
        case iPadAir3           = "iPad Air (3rd generation)"
        case iPadAir4           = "iPad Air (4th generation)"
        case iPadAir5           = "iPad Air (5th generation)"
    }
    
    // https://support.apple.com/en-us/HT201471#ipadmini
    enum iPadMini : String, DeviceType {
        case iPadMini           = "iPad Mini"
        case iPadMini2          = "iPad Mini 2"
        case iPadMini3          = "iPad Mini 3"
        case iPadMini4          = "iPad Mini 4"
        case iPadMini5          = "iPad mini (5th generation)"
        case iPadMini6          = "iPad mini (6th generation)"
    }
    
    /// https://support.apple.com/en-us/HT201471#ipadpro
    enum iPadPro : String, DeviceType {
        case iPadPro9Inch       = "iPad Pro (9.7-inch)"
        case iPadPro12Inch      = "iPad Pro (12-inch)"
        case iPadPro12Inch2     = "iPad Pro (12-inch) (2nd generation)"
        case iPadPro10Inch      = "iPad Pro (10.5-inch)"
        case iPadPro11Inch      = "iPad Pro (11-inch)"
        case iPadPro12Inch3     = "iPad Pro (12.9-inch) (3rd generation)"
        case iPadPro11Inch2     = "iPad Pro (11-inch) (2nd generation)"
        case iPadPro12Inch4     = "iPad Pro (12.9-inch) (4th generation)"
        case iPadPro11Inch3     = "iPad Pro (11-inch) (3rd generation)"
        case iPadPro12Inch5     = "iPad Pro (12.9-inch) (5th generation)"
        case iPadPro11Inch4     = "iPad Pro (11-inch) (4th generation)"
        case iPadPro12Inch6     = "iPad Pro (12.9-inch) (6th generation)"
    }
    
    
    // MARK: - AppleTV
    
    /// https://support.apple.com/en-us/HT200008
    enum AppleTV : String, DeviceType {
        case appleTV1           = "Apple TV (1st generation)"
        case appleTV2           = "Apple TV (2nd generation)"
        case appleTV3           = "Apple TV (3rd generation)"
        case appleTVHD          = "Apple TV HD"
        case appleTV_4K         = "Apple TV 4K (1st generation)"
        case appleTV2_4K        = "Apple TV 4K (2nd generation)"
        case appleTV3_4K        = "Apple TV 4K (3rd generation)"
    }
    
    
    // MARK: - Simulator and Unknown
    
    enum Default: DeviceType {
        case simulator
        case unknown(String)
        
        var marketingName: String {
            switch self {
            case .simulator:
                return "Simulator"
            case .unknown(let identifier):
                return identifier
            }
        }
        
        static func == (lhs: Default, rhs: Default) -> Bool {
            return lhs.marketingName == rhs.marketingName
        }
    }
}
