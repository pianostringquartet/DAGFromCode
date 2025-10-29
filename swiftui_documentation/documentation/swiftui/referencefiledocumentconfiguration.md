---
title: ReferenceFileDocumentConfiguration
description: The properties of an open reference file document.
source: https://developer.apple.com/documentation/swiftui/referencefiledocumentconfiguration
timestamp: 2025-10-29T00:15:20.838Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ReferenceFileDocumentConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The properties of an open reference file document.

```swift
@MainActor @preconcurrency struct ReferenceFileDocumentConfiguration<Document> where Document : ReferenceFileDocument
```

## Overview

You receive an instance of this structure when you create a [Document Group](/documentation/swiftui/documentgroup) with a reference file type. Use it to access the document in your viewer or editor.

## Getting and setting the document

- [document](/documentation/swiftui/referencefiledocumentconfiguration/document) The current document model.
- [$document](/documentation/swiftui/referencefiledocumentconfiguration/$document)

## Getting document properties

- [fileURL](/documentation/swiftui/referencefiledocumentconfiguration/fileurl) The URL of the open file document.
- [isEditable](/documentation/swiftui/referencefiledocumentconfiguration/iseditable) A Boolean that indicates whether you can edit the document.

## Storing document data in a class instance

- [ReferenceFileDocument](/documentation/swiftui/referencefiledocument)
- [undoManager](/documentation/swiftui/environmentvalues/undomanager)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
