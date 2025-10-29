---
title: isEditable
description: A Boolean value that indicates whether you can edit the document.
source: https://developer.apple.com/documentation/swiftui/documentconfiguration/iseditable
timestamp: 2025-10-29T00:13:32.652Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentconfiguration](/documentation/swiftui/documentconfiguration)

**Instance Property**

# isEditable

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A Boolean value that indicates whether you can edit the document.

```swift
var isEditable: Bool { get }
```

## Discussion

On macOS, the document could be non-editable if the user lacks write permissions, the parent directory or volume is read-only, or the document couldn’t be autosaved.

On iOS, the document is not editable if there was an error reading or saving it, there’s an unresolved conflict, the document is being uploaded or downloaded, or otherwise, it is currently busy and unsafe for user edits.

## Getting configuration values

- [fileURL](/documentation/swiftui/documentconfiguration/fileurl)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
