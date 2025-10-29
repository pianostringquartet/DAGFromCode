---
title: FileDocumentConfiguration
description: The properties of an open file document.
source: https://developer.apple.com/documentation/swiftui/filedocumentconfiguration
timestamp: 2025-10-29T00:10:43.559Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FileDocumentConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The properties of an open file document.

```swift
struct FileDocumentConfiguration<Document> where Document : FileDocument
```

## Overview

You receive an instance of this structure when you create a [Document Group](/documentation/swiftui/documentgroup) with a value file type. Use it to access the document in your viewer or editor.

## Getting and setting the document

- [document](/documentation/swiftui/filedocumentconfiguration/document) The current document model.
- [$document](/documentation/swiftui/filedocumentconfiguration/$document)

## Getting document properties

- [fileURL](/documentation/swiftui/filedocumentconfiguration/fileurl) The URL of the open file document.
- [isEditable](/documentation/swiftui/filedocumentconfiguration/iseditable) A Boolean that indicates whether you can edit the document.

## Storing document data in a structure instance

- [FileDocument](/documentation/swiftui/filedocument)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
