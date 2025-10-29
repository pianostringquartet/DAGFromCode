---
title: writableContentTypes
description: The file types that the document supports saving or exporting to.
source: https://developer.apple.com/documentation/swiftui/filedocument/writablecontenttypes
timestamp: 2025-10-29T00:15:31.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [filedocument](/documentation/swiftui/filedocument)

**Type Property**

# writableContentTypes

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The file types that the document supports saving or exporting to.

```swift
static var writableContentTypes: [UTType] { get }
```

## Discussion

By default, SwiftUI assumes that your document reads and writes the same set of content types. Only define this property if you need to indicate a different set of types for writing files. Otherwise, the default implementation of this property returns the list that you specify in your implementation of [readable Content Types](/documentation/swiftui/filedocument/readablecontenttypes).

## Writing a document

- [fileWrapper(configuration:)](/documentation/swiftui/filedocument/filewrapper(configuration:))
- [FileDocument.WriteConfiguration](/documentation/swiftui/filedocument/writeconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
