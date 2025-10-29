---
title: ReferenceFileDocument
description: A type that you use to serialize reference type documents to and from file.
source: https://developer.apple.com/documentation/swiftui/referencefiledocument
timestamp: 2025-10-29T00:12:25.795Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ReferenceFileDocument

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> A type that you use to serialize reference type documents to and from file.

```swift
@preconcurrency protocol ReferenceFileDocument : ObservableObject, Sendable
```

## Overview

To store a document as a reference type — like a class — create a type that conforms to the `ReferenceFileDocument` protocol and implement the required methods and properties. Your implementation:

- Provides a list of the content types that the document can read from and write to by defining [readable Content Types](/documentation/swiftui/referencefiledocument/readablecontenttypes). If the list of content types that the document can write to is different from those that it reads from, you can optionally also define [writable Content Types](/documentation/swiftui/referencefiledocument/writablecontenttypes).
- Loads documents from file in the [init(configuration:)](/documentation/swiftui/referencefiledocument/init(configuration:)) initializer.
- Stores documents to file by providing a snapshot of the document’s content in the [snapshot(contentType:)](/documentation/swiftui/referencefiledocument/snapshot(contenttype:)) method, and then serializing that content in the [fileWrapper(snapshot:configuration:)](/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:)) method.

Ensure that types that conform to this protocol are `Sendable`. In particular, SwiftUI calls the protocol’s methods from different isolation domains. Don’t perform serialization and deserialization on `MainActor`.

```swift
final class PDFDocument: ReferenceFileDocument {
    struct Storage {
        var contents: Data
    }

    static let readableContentTypes: [UTType] = [.pdf]
    let storage: Mutex<Storage>

    required init(configuration: ReadConfiguration) throws {
       guard let data = configuration.file.regularFileContents else {
           throw CocoaError(.fileReadCorruptFile)
       }
        self.storage = .init(.init(contents: data))
    }

    func snapshot(contentType: UTType) throws -> Data {
        storage.withLock { $0.contents }
    }

    func fileWrapper(snapshot: Data, configuration: WriteConfiguration) throws -> FileWrapper {
        return FileWrapper(regularFileWithContents: snapshot)
    }
}
```

> [!IMPORTANT]
> If you store your document as a value type — like a structure — use [File Document](/documentation/swiftui/filedocument) instead.

## Inherits From

- [ObservableObject](/documentation/Combine/ObservableObject)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Reading a document

- [init(configuration:)](/documentation/swiftui/referencefiledocument/init(configuration:)) Creates a document and initializes it with the contents of a file.
- [readableContentTypes](/documentation/swiftui/referencefiledocument/readablecontenttypes) The file and data types that the document reads from.
- [ReferenceFileDocument.ReadConfiguration](/documentation/swiftui/referencefiledocument/readconfiguration) The configuration for reading document contents.

## Getting a snapshot

- [snapshot(contentType:)](/documentation/swiftui/referencefiledocument/snapshot(contenttype:)) Creates a snapshot that represents the current state of the document.
- [Snapshot](/documentation/swiftui/referencefiledocument/snapshot) A type that represents the document’s stored content.

## Writing a document

- [fileWrapper(snapshot:configuration:)](/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:)) Serializes a document snapshot to a file wrapper.
- [writableContentTypes](/documentation/swiftui/referencefiledocument/writablecontenttypes) The file types that the document supports saving or exporting to.
- [ReferenceFileDocument.WriteConfiguration](/documentation/swiftui/referencefiledocument/writeconfiguration) The configuration for writing document contents.

## Storing document data in a class instance

- [ReferenceFileDocumentConfiguration](/documentation/swiftui/referencefiledocumentconfiguration)
- [undoManager](/documentation/swiftui/environmentvalues/undomanager)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
