import XCTest
import ExtendedArray

class SequenceTests: XCTestCase {
    func testNoneValuesReturnNone() {
        let array: [Int?] = [1, 2, 3, .None]
        let returned = sequence(array)

        XCTAssertNil(returned)
    }

    func testAllSomeValuesReturnSome() {
        let array: [Int?] = [1, 2, 3, 4, 5]
        let returned = sequence(array)!

        XCTAssert(returned == [1, 2, 3, 4, 5])
    }
}
