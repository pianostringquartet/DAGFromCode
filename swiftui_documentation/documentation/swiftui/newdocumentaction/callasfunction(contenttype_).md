---
title: callAsFunction(contentType:)
description: Presents a new document window.
source: https://developer.apple.com/documentation/swiftui/newdocumentaction/callasfunction(contenttype:)
timestamp: 2025-10-29T00:11:49.091Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [newdocumentaction](/documentation/swiftui/newdocumentaction)

**Instance Method**

# callAsFunction(contentType:)

**Available on:** macOS 14.0+

> Presents a new document window.

```swift
@MainActor @preconcurrency func callAsFunction(contentType: UTType)
```

## Parameters

**contentType**

The content type of the document.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [new Document](/documentation/swiftui/environmentvalues/newdocument) action:

```swift
newDocument(contentType: .todoList)

 extension UTType {
     static let todoList = UTType(exportedAs: "com.myApp.todoList")
 }
```

> [!IMPORTANT]
> If your app declares custom uniform type identifiers, include corresponding entries in the app’s `Info.plist` file. For more information, see [defining-file-and-data-types-for-your](/documentation/UniformTypeIdentifiers/defining-file-and-data-types-for-your-app). Also, remember to specify the supported Document types in the `Info.plist` file as well.

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(_:)](/documentation/swiftui/newdocumentaction/callasfunction(_:))
- [callAsFunction(contentType:prepareDocument:)](/documentation/swiftui/newdocumentaction/callasfunction(contenttype:preparedocument:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
