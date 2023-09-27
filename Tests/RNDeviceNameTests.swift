import XCTest
@testable import RNDeviceName

final class RNDeviceNameTests: XCTestCase {

    func test_iPhone4() throws {
        validate(.iPhone4, identifiers: ["iPhone3,1", "iPhone3,2", "iPhone3,3"])
    }
    
    func test_iPhone13_family() throws {
        validate(.iPhone13Mini, identifiers: ["iPhone14,4"])
        validate(.iPhone13, identifiers: ["iPhone14,5"])
        validate(.iPhone13Pro, identifiers: ["iPhone14,2"])
        validate(.iPhone13ProMax, identifiers: ["iPhone14,3"])
    }
    
    func test_iPhone14_family() throws {
        validate(.iPhone14, identifiers: ["iPhone14,7"])
        validate(.iPhone14Plus, identifiers: ["iPhone14,8"])
        validate(.iPhone14Pro, identifiers: ["iPhone15,2"])
        validate(.iPhone14ProMax, identifiers: ["iPhone15,3"])
    }
    
    func test_iPhone15_family() throws {
        validate(.iPhone15, identifiers: ["iPhone15,4"])
        validate(.iPhone15Plus, identifiers: ["iPhone15,5"])
        validate(.iPhone15Pro, identifiers: ["iPhone16,1"])
        validate(.iPhone15ProMax, identifiers: ["iPhone16,2"])
    }
}


// MARK: - Test Helper

extension RNDeviceNameTests {
    
    private func validate(_ device: Device.iPhone,
                          identifiers: [String],
                          file: StaticString = #file,
                          line: UInt = #line) {
        validateDevice(device, identifiers: identifiers, file: file, line: line)
    }
    
    private func validateDevice(_ deviceType: any DeviceType,
                                identifiers: [String],
                                file: StaticString = #file,
                                line: UInt = #line) {
        identifiers.forEach { identifier in
            let device = Device(identifier: identifier)
            XCTAssertEqual(device.marketingName, deviceType.marketingName, file: file, line: line)
        }
    }
}
