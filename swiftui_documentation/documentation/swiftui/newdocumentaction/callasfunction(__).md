---
title: callAsFunction(_:)
description: Presents a new document window.
source: https://developer.apple.com/documentation/swiftui/newdocumentaction/callasfunction(_:)
timestamp: 2025-10-29T00:10:13.504Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [newdocumentaction](/documentation/swiftui/newdocumentaction)

**Instance Method**

# callAsFunction(_:)

**Available on:** macOS 13.0+

> Presents a new document window.

```swift
@MainActor @preconcurrency func callAsFunction<D>(_ newDocument: @autoclosure @escaping () -> D) where D : FileDocument
```

## Parameters

**newDocument**

The new file document to present.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [new Document](/documentation/swiftui/environmentvalues/newdocument) action:

```swift
newDocument(TextDocument(text: selectedText))
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(contentType:)](/documentation/swiftui/newdocumentaction/callasfunction(contenttype:))
- [callAsFunction(contentType:prepareDocument:)](/documentation/swiftui/newdocumentaction/callasfunction(contenttype:preparedocument:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
