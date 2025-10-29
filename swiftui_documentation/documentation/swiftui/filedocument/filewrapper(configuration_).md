---
title: fileWrapper(configuration:)
description: Serializes a document snapshot to a file wrapper.
source: https://developer.apple.com/documentation/swiftui/filedocument/filewrapper(configuration:)
timestamp: 2025-10-29T00:09:49.643Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [filedocument](/documentation/swiftui/filedocument)

**Instance Method**

# fileWrapper(configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Serializes a document snapshot to a file wrapper.

```swift
func fileWrapper(configuration: Self.WriteConfiguration) throws -> FileWrapper
```

## Parameters

**configuration**

Information about a file that already exists for the document, if any.



## Return Value

The destination to serialize the document contents to. The value can be a newly created [File Wrapper](/documentation/Foundation/FileWrapper) or an update of the one provided in the `configuration` input.

## Discussion

To store a document — for example, in response to a Save command — SwiftUI calls this method. Use it to serialize the document’s data and create or modify a file wrapper with the serialized data:

```swift
func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
    let data = try JSONEncoder().encode(model)
    return FileWrapper(regularFileWithContents: data)
}
```

> [!NOTE]
> SwiftUI calls this method on a background thread. Don’t make user interface changes from that thread.

## Writing a document

- [writableContentTypes](/documentation/swiftui/filedocument/writablecontenttypes)
- [FileDocument.WriteConfiguration](/documentation/swiftui/filedocument/writeconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
