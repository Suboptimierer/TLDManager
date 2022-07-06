# TLDManager

When working with URLs, you often need to check the correctness of specified top-level domains. However, keeping a separate list of TLDs in each Swift project is error-prone and difficult to maintain. TLDManager is designed to solve this problem as an easy to import Swift Package.

This Swift Package is used in production by [URL Detector for Safari](https://apps.apple.com/app/id1498567616).

## Installation

TLDManager is currently only available via Swift Package Manager (SPM). It is not planned to implement support for CocoaPods or Carthage – but feel free to make a pull request.

```Swift
// Add TLDManager to your Package.swift:

import PackageDescription

let package = Package(
    // ...
    dependencies: [
        .package(url: "https://github.com/Suboptimierer/TLDManager", from: "1.0.0"),
    ]
    // ...
)
```

**Xcode >= 11**: `File` → `Swift Packages` → `Add Package Dependency...`

**Xcode >= 13**: `File` → `Add Packages...` / `Project` → `Package Dependencies`

For more information check the [Apple Developer Documentation](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## Usage

```Swift
// Import the TLDManager module
import TLDManager

// Access the static properties...
let _ = TLDManager.version                          // # Version 2022070600, Last Updated Wed Jul  6 07:07:01 2022 UTC
let _ = TLDManager.allValidTLDsUppercased           // ["AAA", "AARP", "ABARTH", "ABB", "ABBOTT", "ABBVIE", "ABC", ...]
let _ = TLDManager.allValidTLDsUppercasedWithDots   // [".AAA", ".AARP", ".ABARTH", ".ABB", ".ABBOTT", ".ABBVIE", ".ABC", ...]
let _ = TLDManager.allValidTLDsLowercased           // ["aaa", "aarp", "abarth", "abb", "abbott", "abbvie", "abc", ...]
let _ = TLDManager.allValidTLDsLowercasedWithDots   // [".aaa", ".aarp", ".abarth", ".abb", ".abbott", ".abbvie", ".abc", ...]
```

## Source

The [list of all valid top-level domains](https://data.iana.org/TLD/tlds-alpha-by-domain.txt) is maintained by the IANA and is updated from time to time.
