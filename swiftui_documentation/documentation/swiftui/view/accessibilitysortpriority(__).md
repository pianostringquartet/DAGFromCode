---
title: accessibilitySortPriority(_:)
description: Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitysortpriority(_:)
timestamp: 2025-10-29T00:09:50.317Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilitySortPriority(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.

```swift
nonisolated func accessibilitySortPriority(_ sortPriority: Double) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

Higher numbers are sorted first. The default sort priority is zero.

## Configuring rotors

- [accessibilityRotorEntry(id:in:)](/documentation/swiftui/view/accessibilityrotorentry(id:in:))
- [accessibilityLinkedGroup(id:in:)](/documentation/swiftui/view/accessibilitylinkedgroup(id:in:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
