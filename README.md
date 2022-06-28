# AppFoundation

[![MIT License](https://img.shields.io/github/license/vsanthanam/AppFoundation)](https://github.com/vsanthanam/AppFoundation/blob/main/LICENSE)
[![Package Releases](https://img.shields.io/github/v/release/vsanthanam/AppFoundation)](https://github.com/vsanthanam/AppFoundation/releases)
[![Build Results](https://img.shields.io/github/workflow/status/vsanthanam/AppFoundation/spm-build-test)](https://img.shields.io/github/workflow/status/vsanthanam/AppFoundation/spm-build-test)
[![Swift Version](https://img.shields.io/badge/swift-5.6-critical)](https://swift.org)
[![Supported Platforms](https://img.shields.io/badge/platform-iOS%2013%20%7C%20macOS%2010.15%20%7C%20tvOS%2013%20%7C%20watchOS%206-lightgrey)](https://developer.apple.com)

AppFoundation is a set of common swift utilities I find myself regularly needing in my projects.

## Installation

AppFoundation currently distributed exclusively through the [Swift Package Manager](https://www.swift.org/package-manager/). 

To add AppFoundation as a dependency to an existing Swift package, add the following line of code to the `dependencies` parameter of your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/vsanthanam/AppFoundation.git", .upToNextMajor(from: "1.0.0"))
]
```

To add AppFoundation as a dependency to an Xcode Project: 

- Choose `File` → `Add Packages...`
- Enter package URL `https://github.com/vsanthanam/AppFoundation.git` and select your release and of choice.

Other distribution mechanisms like CocoaPods or Carthage may be added in the future.

Additional installation instructions are available on the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/AppFoundation)

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FAppFoundation%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/vsanthanam/AppFoundation)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FAppFoundation%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/vsanthanam/AppFoundation)

Explore [the documentation](https://vsanthanam.github.io/AppFoundation/docs/documentation/appfoundation) for more details.

## License

**AppFoundation** is available under the MIT license. See the LICENSE file for more information.
