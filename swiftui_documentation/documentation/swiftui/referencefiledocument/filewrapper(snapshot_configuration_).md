---
title: fileWrapper(snapshot:configuration:)
description: Serializes a document snapshot to a file wrapper.
source: https://developer.apple.com/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:)
timestamp: 2025-10-29T00:10:45.399Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [referencefiledocument](/documentation/swiftui/referencefiledocument)

**Instance Method**

# fileWrapper(snapshot:configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Serializes a document snapshot to a file wrapper.

```swift
func fileWrapper(snapshot: Self.Snapshot, configuration: Self.WriteConfiguration) throws -> FileWrapper
```

## Parameters

**snapshot**

The document snapshot to save.



**configuration**

Information about a file that already exists for the document, if any.



## Return Value

The destination to serialize the document contents to. The value can be a newly created [File Wrapper](/documentation/Foundation/FileWrapper) or an update of the one provided in the `configuration` input.

## Discussion

To store a document — for example, in response to a Save command — SwiftUI begins by calling the [snapshot(contentType:)](/documentation/swiftui/referencefiledocument/snapshot(contenttype:)) method to get a copy of the document data in its current state. Then SwiftUI passes that snapshot to this method, where you serialize it and create or modify a file wrapper with the serialized data:

```swift
func fileWrapper(snapshot: Snapshot, configuration: WriteConfiguration) throws -> FileWrapper {
    let data = try JSONEncoder().encode(snapshot)
    return FileWrapper(regularFileWithContents: data)
}
```

SwiftUI disables document edits during the snapshot to ensure that the document’s data remains coherent, but reenables edits during the serialization operation.

> [!NOTE]
> SwiftUI calls this method on a background thread. Don’t make user interface changes from that thread.

## Writing a document

- [writableContentTypes](/documentation/swiftui/referencefiledocument/writablecontenttypes)
- [ReferenceFileDocument.WriteConfiguration](/documentation/swiftui/referencefiledocument/writeconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
