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
    }
}

@Suite("iPad Pro model tests") struct iPadProFamilyTests {
 
    @Test func iPadPro12Inch() throws {
        validate(.iPadPro12Inch6, identifiers:  ["iPad14,5", "iPad14,6"])
    }
    
    @Test func iPadPro11Inch() throws {
        validate(.iPadPro12Inch6, identifiers:  ["iPad14,5", "iPad14,6"])
        validate(.iPadPro11InchM2, identifiers:  ["iPad14,8", "iPad14,9"])
        validate(.iPadPro11InchM4, identifiers:  ["iPad16,3-A", "iPad16,3-B", "iPad16,4-A", "iPad16,4-B"])
        validate(.iPadPro13InchM4, identifiers:  ["iPad16,5-A", "iPad16,5-B", "iPad16,6-A", "iPad16,6-B"])
    }
    
    @Test func iPadPro13Inch() throws {
        validate(.iPadPro12Inch6, identifiers:  ["iPad14,5", "iPad14,6"])
        validate(.iPadPro13InchM4, identifiers:  ["iPad16,5-A", "iPad16,5-B", "iPad16,6-A", "iPad16,6-B"])
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
    
private func validateDevice(_ deviceType: any DeviceType,
                            identifiers: [String],
                            sourceLocation: SourceLocation = #_sourceLocation) {
    identifiers.forEach { identifier in
        let device = Device(identifier: identifier)
        #expect(device.marketingName == deviceType.marketingName, sourceLocation: sourceLocation)
    }
}
