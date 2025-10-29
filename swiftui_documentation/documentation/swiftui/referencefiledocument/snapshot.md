---
title: Snapshot
description: A type that represents the document’s stored content.
source: https://developer.apple.com/documentation/swiftui/referencefiledocument/snapshot
timestamp: 2025-10-29T00:10:47.502Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [referencefiledocument](/documentation/swiftui/referencefiledocument)

**Associated Type**

# Snapshot

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> A type that represents the document’s stored content.

```swift
associatedtype Snapshot
```

## Discussion

Define this type to represent all the data that your document stores. When someone issues a Save command, SwiftUI asks your document for a value of this type by calling the document’s [snapshot(contentType:)](/documentation/swiftui/referencefiledocument/snapshot(contenttype:)) method. SwiftUI sends the snapshot that you provide to the document’s [fileWrapper(snapshot:configuration:)](/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:)) method, where you serialize the contents of the snapshot into a file wrapper.

## Getting a snapshot

- [snapshot(contentType:)](/documentation/swiftui/referencefiledocument/snapshot(contenttype:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
