---
title: accessibilitySortPriority(_:)
description: Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilitysortpriority(_:)
timestamp: 2025-10-29T00:11:49.746Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilitySortPriority(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.

```swift
nonisolated func accessibilitySortPriority(_ sortPriority: Double) -> ModifiedContent<Content, Modifier>
```

## Discussion

Higher numbers are sorted first. The default sort priority is zero.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
