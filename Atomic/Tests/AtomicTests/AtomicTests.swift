import XCTest
import Atomic

final class AtomicTests: XCTestCase {
    func testDoesNotCrashWhenBeingMutatedFromManyThreads() {
        let object = ObjectWithStrings(string: makeString())
        let group = DispatchGroup()

        (0..<100000).forEach { _ in
            group.enter()
            DispatchQueue.global().async {
                object.string = self.makeString()
                object.optionalString = self.makeOptionalString()
                group.leave()
            }
        }

        group.wait()
    }

    static var allTests = [
        ("testDoesNotCrashWhenBeingMutatedFromManyThreads", testDoesNotCrashWhenBeingMutatedFromManyThreads),
    ]
}

private extension AtomicTests {
    func makeString() -> String {
        return UUID().uuidString
    }

    func makeOptionalString() -> String? {
        if Bool.random() {
            return makeString()
        } else {
            return nil
        }
    }
}
