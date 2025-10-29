---
title: document
description: The current document model.
source: https://developer.apple.com/documentation/swiftui/referencefiledocumentconfiguration/document
timestamp: 2025-10-29T00:14:05.531Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [referencefiledocumentconfiguration](/documentation/swiftui/referencefiledocumentconfiguration)

**Instance Property**

# document

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The current document model.

```swift
@ObservedObject @MainActor @preconcurrency var document: Document { get set }
```

## Discussion

Changes to the document dirty the document state, indicating that it needs to be saved. SwiftUI doesn’t automatically register undo actions.

## Getting and setting the document

- [$document](/documentation/swiftui/referencefiledocumentconfiguration/$document)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
