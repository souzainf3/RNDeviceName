import Testing
@testable import RNDeviceName

@Suite("iPhone model tests") struct iPhoneFamilyTests {
    
    @Test func iPhone13() throws {
        validate(.iPhone13Mini, identifiers: ["iPhone14,4"])
        validate(.iPhone13, identifiers: ["iPhone14,5"])
        validate(.iPhone13Pro, identifiers: ["iPhone14,2"])
        validate(.iPhone13ProMax, identifiers: ["iPhone14,3"])
    }
    
    @Test func iPhone14() throws {
        validate(.iPhone14, identifiers: ["iPhone14,7"])
        validate(.iPhone14Plus, identifiers: ["iPhone14,8"])
        validate(.iPhone14Pro, identifiers: ["iPhone15,2"])
        validate(.iPhone14ProMax, identifiers: ["iPhone15,3"])
    }
    
    @Test func iPhone15() throws {
        validate(.iPhone15, identifiers: ["iPhone15,4"])
        validate(.iPhone15Plus, identifiers: ["iPhone15,5"])
        validate(.iPhone15Pro, identifiers: ["iPhone16,1"])
        validate(.iPhone15ProMax, identifiers: ["iPhone16,2"])
    }
    
    @Test func iPhone16() throws {
        validate(.iPhone16Pro, identifiers: ["iPhone17,1"])
        validate(.iPhone16ProMax, identifiers: ["iPhone17,2"])
        validate(.iPhone16, identifiers: ["iPhone17,3"])
        validate(.iPhone16Plus, identifiers: ["iPhone17,4"])
        validate(.iPhone16e, identifiers: ["iPhone17,5"])
    }

    @Test func iPhone17() throws {
        validate(.iPhone17Pro, identifiers: ["iPhone18,1"])
        validate(.iPhone17ProMax, identifiers: ["iPhone18,2"])
        validate(.iPhone17, identifiers: ["iPhone18,3"])
        validate(.iPhoneAir, identifiers: ["iPhone18,4"])
        validate(.iPhone17e, identifiers: ["iPhone18,5"])
    }

    @Test func iPhone18Pro() throws {
        validate(.iPhone18Pro, identifiers: ["iPhone19,2"])
        validate(.iPhone18ProMax, identifiers: ["iPhone19,3", "iPhone19,7"])
    }

    @Test func iPhoneDuo() throws {
        validate(.iPhoneDuo, identifiers: ["iPhone19,4"])
    }
}

@Suite("iPad Pro model tests") struct iPadProFamilyTests {
 
    @Test func iPadPro12Inch() throws {
        validate(.iPadPro12Inch6, identifiers: ["iPad14,5", "iPad14,6", "iPad14,5-A", "iPad14,5-B", "iPad14,6-A", "iPad14,6-B"])
    }
    
    @Test func iPadPro11Inch() throws {
        validate(.iPadPro12Inch6, identifiers: ["iPad14,5", "iPad14,6", "iPad14,5-A", "iPad14,5-B", "iPad14,6-A", "iPad14,6-B"])
        validate(.iPadPro11Inch4, identifiers: ["iPad14,3", "iPad14,4", "iPad14,3-A", "iPad14,3-B", "iPad14,4-A", "iPad14,4-B"])
        validate(.iPadPro11InchM4, identifiers:  ["iPad16,3", "iPad16,4", "iPad16,3-A", "iPad16,3-B", "iPad16,4-A", "iPad16,4-B"])
        validate(.iPadPro13InchM4, identifiers:  ["iPad16,5", "iPad16,6", "iPad16,5-A", "iPad16,5-B", "iPad16,6-A", "iPad16,6-B"])
        validate(.iPadPro11InchM5, identifiers: ["iPad17,1", "iPad17,2", "iPad17,1-A", "iPad17,1-B", "iPad17,2-A", "iPad17,2-B"])
    }
    
    @Test func iPadPro13Inch() throws {
        validate(.iPadPro12Inch6, identifiers: ["iPad14,5", "iPad14,6", "iPad14,5-A", "iPad14,5-B", "iPad14,6-A", "iPad14,6-B"])
        validate(.iPadPro13InchM4, identifiers:  ["iPad16,5", "iPad16,6", "iPad16,5-A", "iPad16,5-B", "iPad16,6-A", "iPad16,6-B"])
        validate(.iPadPro13InchM5, identifiers: ["iPad17,3", "iPad17,4", "iPad17,3-A", "iPad17,3-B", "iPad17,4-A", "iPad17,4-B"])
    }
}

@Suite("Other iPad model tests") struct OtherIPadFamilyTests {
    @Test func iPadA16() throws {
        validate(.iPadA16, identifiers: ["iPad15,7", "iPad15,8"])
    }

    @Test func iPadAirM2M3M4() throws {
        validate(.iPadAir11M2, identifiers: ["iPad14,8", "iPad14,9"])
        validate(.iPadAir13M2, identifiers: ["iPad14,10", "iPad14,11"])
        validate(.iPadAir11M3, identifiers: ["iPad15,3", "iPad15,4"])
        validate(.iPadAir13M3, identifiers: ["iPad15,5", "iPad15,6"])
        validate(.iPadAir11M4, identifiers: ["iPad16,8", "iPad16,9"])
        validate(.iPadAir13M4, identifiers: ["iPad16,10", "iPad16,11"])
    }

    @Test func iPadMiniA17Pro() throws {
        validate(.iPadMiniA17Pro, identifiers: ["iPad16,1", "iPad16,2"])
    }
}

// MARK: - Test Helper
    
private func validate(_ device: Device.iPhone,
                      identifiers: [String],
                      sourceLocation: SourceLocation = #_sourceLocation) {
    validateDevice(device, identifiers: identifiers, sourceLocation: sourceLocation)
}

private func validate(_ device: Device.iPadPro,
                      identifiers: [String],
                      sourceLocation: SourceLocation = #_sourceLocation) {
    validateDevice(device, identifiers: identifiers, sourceLocation: sourceLocation)
}

private func validate(_ device: Device.iPad,
                      identifiers: [String],
                      sourceLocation: SourceLocation = #_sourceLocation) {
    validateDevice(device, identifiers: identifiers, sourceLocation: sourceLocation)
}

private func validate(_ device: Device.iPadAir,
                      identifiers: [String],
                      sourceLocation: SourceLocation = #_sourceLocation) {
    validateDevice(device, identifiers: identifiers, sourceLocation: sourceLocation)
}

private func validate(_ device: Device.iPadMini,
                      identifiers: [String],
                      sourceLocation: SourceLocation = #_sourceLocation) {
    validateDevice(device, identifiers: identifiers, sourceLocation: sourceLocation)
}

private func validate(_ device: Device.AppleTV,
                      identifiers: [String],
                      sourceLocation: SourceLocation = #_sourceLocation) {
    validateDevice(device, identifiers: identifiers, sourceLocation: sourceLocation)
}
    
private func validateDevice(_ deviceType: any DeviceType,
                            identifiers: [String],
                            sourceLocation: SourceLocation = #_sourceLocation) {
    identifiers.forEach { identifier in
        let device = Device(identifier: identifier)
        #expect(device.marketingName == deviceType.marketingName, sourceLocation: sourceLocation)
    }
}
