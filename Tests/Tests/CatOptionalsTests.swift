import XCTest
import ExtendedArray

class CatOptionalsTests: XCTestCase {
    func testStripsNoneValues() {
        let array: [Int?] = [1, 2, 3, .None, 5]
        let returned = catOptionals(array)

        XCTAssert(returned == [1, 2, 3, 5])
    }
}
