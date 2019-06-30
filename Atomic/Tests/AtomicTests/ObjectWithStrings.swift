import Foundation
import Atomic

final class ObjectWithStrings {
    @Atomic var string: String
    @Atomic(nil) var optionalString: String?

    init(string: String, optionalString: String?) {
        $string = Atomic(string)
        $optionalString = Atomic(optionalString)
    }

    init(string: String) {
        $string = Atomic(string)
    }
}
