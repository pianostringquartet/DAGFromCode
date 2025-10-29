---
title: FileDocument.WriteConfiguration
description: The configuration for writing document contents.
source: https://developer.apple.com/documentation/swiftui/filedocument/writeconfiguration
timestamp: 2025-10-29T00:12:49.123Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [filedocument](/documentation/swiftui/filedocument)

**Type Alias**

# FileDocument.WriteConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The configuration for writing document contents.

```swift
typealias WriteConfiguration = FileDocumentWriteConfiguration
```

## Discussion

This type is an alias for [File Document Write Configuration](/documentation/swiftui/filedocumentwriteconfiguration), which contains a content type and a file wrapper that you use to access the contents of a document file, if one already exists. You get a value of this type as an input to the [fileWrapper(configuration:)](/documentation/swiftui/filedocument/filewrapper(configuration:)) method.

## Writing a document

- [fileWrapper(configuration:)](/documentation/swiftui/filedocument/filewrapper(configuration:))
- [writableContentTypes](/documentation/swiftui/filedocument/writablecontenttypes)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
