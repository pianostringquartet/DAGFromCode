---
title: paging
description: The scroll behavior that aligns scroll targets to container-based geometry.
source: https://developer.apple.com/documentation/swiftui/scrolltargetbehavior/paging
timestamp: 2025-10-29T00:10:44.169Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltargetbehavior](/documentation/swiftui/scrolltargetbehavior)

**Type Property**

# paging

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The scroll behavior that aligns scroll targets to container-based geometry.

```swift
static var paging: PagingScrollTargetBehavior { get }
```

## Discussion

In the following example, every view in the lazy stack is flexible in both directions and the scroll view settles to container-aligned boundaries.

```swift
ScrollView {
    LazyVStack(spacing: 0.0) {
        ForEach(items) { item in
            FullScreenItem(item)
        }
    }
}
.scrollTargetBehavior(.paging)
```

## Getting the scroll target behavior

- [viewAligned](/documentation/swiftui/scrolltargetbehavior/viewaligned)
- [viewAligned(limitBehavior:)](/documentation/swiftui/scrolltargetbehavior/viewaligned(limitbehavior:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
