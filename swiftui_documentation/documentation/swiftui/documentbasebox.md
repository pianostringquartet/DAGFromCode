---
title: DocumentBaseBox
description: A Box that allows setting its Document base not requiring the caller to know the exact types of the box and its base.
source: https://developer.apple.com/documentation/swiftui/documentbasebox
timestamp: 2025-10-29T00:10:06.977Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# DocumentBaseBox

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A Box that allows setting its Document base not requiring the caller to know the exact types of the box and its base.

```swift
protocol DocumentBaseBox<Document> : AnyObject
```

## Associated Types

- [Document](/documentation/swiftui/documentbasebox/document) The underlying document type.

## Instance Properties

- [base](/documentation/swiftui/documentbasebox/base) Updates the underlying document to a new value.

## Configuring the document launch experience

- [DocumentGroupLaunchScene](/documentation/swiftui/documentgrouplaunchscene)
- [DocumentLaunchView](/documentation/swiftui/documentlaunchview)
- [DocumentLaunchGeometryProxy](/documentation/swiftui/documentlaunchgeometryproxy)
- [DefaultDocumentGroupLaunchActions](/documentation/swiftui/defaultdocumentgrouplaunchactions)
- [NewDocumentButton](/documentation/swiftui/newdocumentbutton)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
