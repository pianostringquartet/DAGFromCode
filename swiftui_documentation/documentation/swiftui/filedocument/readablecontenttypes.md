---
title: readableContentTypes
description: The file and data types that the document reads from.
source: https://developer.apple.com/documentation/swiftui/filedocument/readablecontenttypes
timestamp: 2025-10-29T00:15:31.650Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [filedocument](/documentation/swiftui/filedocument)

**Type Property**

# readableContentTypes

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The file and data types that the document reads from.

```swift
static var readableContentTypes: [UTType] { get }
```

## Discussion

Define this list to indicate the content types that your document can read. By default, SwiftUI assumes that your document can also write the same set of content types. If you need to indicate a different set of types for writing files, define the [writable Content Types](/documentation/swiftui/filedocument/writablecontenttypes) property in addition to this property.

## Reading a document

- [init(configuration:)](/documentation/swiftui/filedocument/init(configuration:))
- [FileDocument.ReadConfiguration](/documentation/swiftui/filedocument/readconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
