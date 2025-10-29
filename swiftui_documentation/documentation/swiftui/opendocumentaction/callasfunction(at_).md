---
title: callAsFunction(at:)
description: Opens the document at the specified file URL.
source: https://developer.apple.com/documentation/swiftui/opendocumentaction/callasfunction(at:)
timestamp: 2025-10-29T00:14:09.527Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [opendocumentaction](/documentation/swiftui/opendocumentaction)

**Instance Method**

# callAsFunction(at:)

**Available on:** macOS 13.0+

> Opens the document at the specified file URL.

```swift
@MainActor func callAsFunction(at url: URL) async throws
```

## Parameters

**url**

A file URL that points at an existing document.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [open Document](/documentation/swiftui/environmentvalues/opendocument) action:

```swift
do {
    try await openDocument(at: url)
} catch {
    // Handle error
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
