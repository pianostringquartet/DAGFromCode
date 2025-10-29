---
title: FileDocument
description: A type that you use to serialize documents to and from file.
source: https://developer.apple.com/documentation/swiftui/filedocument
timestamp: 2025-10-29T00:12:27.560Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# FileDocument

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> A type that you use to serialize documents to and from file.

```swift
@preconcurrency protocol FileDocument : Sendable
```

## Overview

To store a document as a value type — like a structure — create a type that conforms to the `FileDocument` protocol and implement the required methods and properties. Your implementation:

- Provides a list of the content types that the document can read from and write to by defining [readable Content Types](/documentation/swiftui/filedocument/readablecontenttypes). If the list of content types that the document can write to is different from those that it reads from, you can optionally also define [writable Content Types](/documentation/swiftui/filedocument/writablecontenttypes).
- Loads documents from file in the [init(configuration:)](/documentation/swiftui/filedocument/init(configuration:)) initializer.
- Stores documents to file by serializing their content in the [fileWrapper(configuration:)](/documentation/swiftui/filedocument/filewrapper(configuration:)) method.

> [!IMPORTANT]
> If you store your document as a reference type — like a class — use [Reference File Document](/documentation/swiftui/referencefiledocument) instead.

Ensure that types that conform to this protocol are `Sendable`. In particular, SwiftUI calls the protocol’s methods from different isolation domains. Don’t perform serialization and deserialization on `MainActor`.

## Inherits From

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Reading a document

- [init(configuration:)](/documentation/swiftui/filedocument/init(configuration:)) Creates a document and initializes it with the contents of a file.
- [readableContentTypes](/documentation/swiftui/filedocument/readablecontenttypes) The file and data types that the document reads from.
- [FileDocument.ReadConfiguration](/documentation/swiftui/filedocument/readconfiguration) The configuration for reading document contents.

## Writing a document

- [fileWrapper(configuration:)](/documentation/swiftui/filedocument/filewrapper(configuration:)) Serializes a document snapshot to a file wrapper.
- [writableContentTypes](/documentation/swiftui/filedocument/writablecontenttypes) The file types that the document supports saving or exporting to.
- [FileDocument.WriteConfiguration](/documentation/swiftui/filedocument/writeconfiguration) The configuration for writing document contents.

## Storing document data in a structure instance

- [FileDocumentConfiguration](/documentation/swiftui/filedocumentconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
