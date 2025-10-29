---
title: undoManager
description: The undo manager used to register a view’s undo operations.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/undomanager
timestamp: 2025-10-29T00:14:32.846Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# undoManager

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The undo manager used to register a view’s undo operations.

```swift
var undoManager: UndoManager? { get }
```

## Discussion

This value is `nil` when the environment represents a context that doesn’t support undo and redo operations. You can skip registration of an undo operation when this value is `nil`.

## Storing document data in a class instance

- [ReferenceFileDocument](/documentation/swiftui/referencefiledocument)
- [ReferenceFileDocumentConfiguration](/documentation/swiftui/referencefiledocumentconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
