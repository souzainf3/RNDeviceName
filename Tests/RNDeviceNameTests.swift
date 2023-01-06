import XCTest
@testable import RNDeviceName

// TODO: - Create more tests
final class RNDeviceNameTests: XCTestCase {

    func test_iPhone4() throws {
        let identifiers = ["iPhone3,1", "iPhone3,2", "iPhone3,3"]
        
        let iPhone4 = Device.iPhone.iPhone4.marketingName
        
        identifiers.forEach { identifier in
            let device = Device(identifier: identifier)
            XCTAssertEqual(device.marketingName, iPhone4)
        }
    }
}
