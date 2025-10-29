---
title: init(configuration:)
description: Creates a document and initializes it with the contents of a file.
source: https://developer.apple.com/documentation/swiftui/filedocument/init(configuration:)
timestamp: 2025-10-29T00:10:13.050Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [filedocument](/documentation/swiftui/filedocument)

**Initializer**

# init(configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a document and initializes it with the contents of a file.

```swift
init(configuration: Self.ReadConfiguration) throws
```

## Parameters

**configuration**

Information about the file that you read document data from.



## Discussion

SwiftUI calls this initializer when someone opens a file type that matches one of those that your document type supports. Use the [file](/documentation/swiftui/filedocumentreadconfiguration/file) property of the `configuration` input to get document’s data. Deserialize the data, and store it in your document’s data structure:

```swift
init(configuration: ReadConfiguration) throws {
    guard let data = configuration.file.regularFileContents
    else { /* Throw an error. */ }
    model = try JSONDecoder().decode(Model.self, from: data)
}
```

The above example assumes that you define `Model` to contain the document’s data, that `Model` conforms to the [Codable](/documentation/Swift/Codable) protocol, and that you store a `model` property of that type inside your document.

> [!NOTE]
> SwiftUI calls this method on a background thread. Don’t make user interface changes from that thread.

## Reading a document

- [readableContentTypes](/documentation/swiftui/filedocument/readablecontenttypes)
- [FileDocument.ReadConfiguration](/documentation/swiftui/filedocument/readconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
