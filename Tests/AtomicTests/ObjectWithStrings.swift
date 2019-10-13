import Foundation
import Atomic

final class ObjectWithStrings {
    @Atomic var string: String
    @Atomic(nil) var optionalString: String?

    init(string: String, optionalString: String?) {
        _string = Atomic(string)
        _optionalString = Atomic(optionalString)
    }

    init(string: String) {
        _string = Atomic(string)
    }
}
