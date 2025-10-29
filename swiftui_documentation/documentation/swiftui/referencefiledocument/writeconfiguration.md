---
title: ReferenceFileDocument.WriteConfiguration
description: The configuration for writing document contents.
source: https://developer.apple.com/documentation/swiftui/referencefiledocument/writeconfiguration
timestamp: 2025-10-29T00:10:46.260Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [referencefiledocument](/documentation/swiftui/referencefiledocument)

**Type Alias**

# ReferenceFileDocument.WriteConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The configuration for writing document contents.

```swift
typealias WriteConfiguration = FileDocumentWriteConfiguration
```

## Discussion

This type is an alias for [File Document Write Configuration](/documentation/swiftui/filedocumentwriteconfiguration), which contains a content type and a file wrapper that you use to access the contents of a document file, if one already exists. You get a value of this type as an input to the [fileWrapper(snapshot:configuration:)](/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:)) method.

## Writing a document

- [fileWrapper(snapshot:configuration:)](/documentation/swiftui/referencefiledocument/filewrapper(snapshot:configuration:))
- [writableContentTypes](/documentation/swiftui/referencefiledocument/writablecontenttypes)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
