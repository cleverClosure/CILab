// Автор: Tim Isaev

import XCTest
@testable import CILab

final class BuildInfoTests: XCTestCase {
    func testSummaryContainsVersionAndBuild() {
        XCTAssertTrue(BuildInfo.summary.hasPrefix("v"))
        XCTAssertTrue(BuildInfo.summary.contains("("))
    }
}
