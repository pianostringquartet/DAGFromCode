---
title: snapshot(contentType:)
description: Creates a snapshot that represents the current state of the document.
source: https://developer.apple.com/documentation/swiftui/referencefiledocument/snapshot(contenttype:)
timestamp: 2025-10-29T00:09:32.093Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [referencefiledocument](/documentation/swiftui/referencefiledocument)

**Instance Method**

# snapshot(contentType:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a snapshot that represents the current state of the document.

```swift
func snapshot(contentType: UTType) throws -> Self.Snapshot
```

## Parameters

**contentType**

The content type that you create the document snapshot for.



## Return Value

A snapshot of the document content that the system provides to the [fileWrapper(snapshot:configuration:)](/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:)) method for serialization.

## Discussion

To store a document — for example, in response to a Save command — SwiftUI begins by calling this method. Return a copy of the document’s content from your implementation of the method. For example, you might define an initializer for your document’s model object that copies the contents of the document’s instance, and return that:

```swift
func snapshot(contentType: UTType) throws -> Snapshot {
    Model(from: model) // Creates a copy.
}
```

SwiftUI prevents document edits during the snapshot operation to ensure that the model state remains coherent. After the call completes, SwiftUI reenables edits, and then calls the [fileWrapper(snapshot:configuration:)](/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:)) method, where you serialize the snapshot and store it to a file.

> [!NOTE]
> SwiftUI calls this method on a background thread. Don’t make user interface changes from that thread.

## Getting a snapshot

- [Snapshot](/documentation/swiftui/referencefiledocument/snapshot)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
