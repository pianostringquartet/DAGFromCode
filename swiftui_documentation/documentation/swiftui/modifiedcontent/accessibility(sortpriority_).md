---
title: accessibility(sortPriority:)
description: Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibility(sortpriority:)
timestamp: 2025-10-29T00:10:04.127Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibility(sortPriority:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.

```swift
nonisolated func accessibility(sortPriority: Double) -> ModifiedContent<Content, Modifier>
```

## Discussion

Higher numbers are sorted first. The default sort priority is zero.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
