# Atomic

Atomic is a lightweight [property wrapper](https://nshipster.com/propertywrapper/) that guarantees thread-safe access to properties decorated with the @Atomic attribute.

## Usage

```swift
class Task {
    @Atomic var title: String

    init(title: String) {
        $title = Atomic(title)
    }
}

let task = Task(title: "Buy groceries")

DispatchQueue.global().async { task.title = "Buy flowers" }
DispatchQueue.global().async { task.title = "Clean kitchen" }
```

## Installation

### Swift Package Manager

To use Atomic with the Swift Package Manager, add a dependency to your Package.swift file:

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/shareup/atomic.git", .upToNextMajor(from: "1.0.0"))
    ]
)
```

_Linux is not currently supported_
