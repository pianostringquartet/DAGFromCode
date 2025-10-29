---
title: ReferenceFileDocument.ReadConfiguration
description: The configuration for reading document contents.
source: https://developer.apple.com/documentation/swiftui/referencefiledocument/readconfiguration
timestamp: 2025-10-29T00:11:43.788Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [referencefiledocument](/documentation/swiftui/referencefiledocument)

**Type Alias**

# ReferenceFileDocument.ReadConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The configuration for reading document contents.

```swift
typealias ReadConfiguration = FileDocumentReadConfiguration
```

## Discussion

This type is an alias for [File Document Read Configuration](/documentation/swiftui/filedocumentreadconfiguration), which contains a content type and a file wrapper that you use to access the contents of a document file. You get a value of this type as an input to the [init(configuration:)](/documentation/swiftui/referencefiledocument/init(configuration:)) initializer. Use it to load a document from a file.

## Reading a document

- [init(configuration:)](/documentation/swiftui/referencefiledocument/init(configuration:))
- [readableContentTypes](/documentation/swiftui/referencefiledocument/readablecontenttypes)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
