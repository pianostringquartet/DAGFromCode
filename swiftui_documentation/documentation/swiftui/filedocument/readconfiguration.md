---
title: FileDocument.ReadConfiguration
description: The configuration for reading document contents.
source: https://developer.apple.com/documentation/swiftui/filedocument/readconfiguration
timestamp: 2025-10-29T00:15:23.424Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [filedocument](/documentation/swiftui/filedocument)

**Type Alias**

# FileDocument.ReadConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The configuration for reading document contents.

```swift
typealias ReadConfiguration = FileDocumentReadConfiguration
```

## Discussion

This type is an alias for [File Document Read Configuration](/documentation/swiftui/filedocumentreadconfiguration), which contains a content type and a file wrapper that you use to access the contents of a document file. You get a value of this type as an input to the [init(configuration:)](/documentation/swiftui/filedocument/init(configuration:)) initializer. Use it to load a document from a file.

## Reading a document

- [init(configuration:)](/documentation/swiftui/filedocument/init(configuration:))
- [readableContentTypes](/documentation/swiftui/filedocument/readablecontenttypes)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
