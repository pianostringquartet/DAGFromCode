---
title: viewAligned
description: The scroll behavior that aligns scroll targets to view-based geometry.
source: https://developer.apple.com/documentation/swiftui/scrolltargetbehavior/viewaligned
timestamp: 2025-10-29T00:12:32.153Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltargetbehavior](/documentation/swiftui/scrolltargetbehavior)

**Type Property**

# viewAligned

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The scroll behavior that aligns scroll targets to view-based geometry.

```swift
static var viewAligned: ViewAlignedScrollTargetBehavior { get }
```

## Discussion

You use this behavior when a scroll view should always align its scroll targets to a rectangle that’s aligned to the geometry of a view. In the following example, the scroll view always picks an item view to settle on.

```swift
ScrollView(.horizontal) {
    LazyHStack(spacing: 10.0) {
        ForEach(items) { item in
            ItemView(item)
        }
    }
    .scrollTargetLayout()
}
.scrollTargetBehavior(.viewAligned)
.padding(.horizontal, 20.0)
```

You configure which views should be used for settling using the `View/scrollTargetLayout()` modifier. Apply this modifier to a layout container like [Lazy VStack](/documentation/swiftui/lazyvstack) or [HStack](/documentation/swiftui/hstack) and each individual view in that layout will be considered for alignment.

You can customize whether the view aligned behavior limits the number of views that can be scrolled at a time by using the `ViewAlignedScrollTargetBehavior.LimitBehavior` type. Provide a value of `ViewAlignedScrollTargetBehavior.LimitBehavior/always` to always have the behavior only allow a few views to be scrolled at a time.

By default, the view aligned behavior limits the number of views it scrolls when in a compact horizontal size class when scrollable in the horizontal axis, when in a compact vertical size class when scrollable in the vertical axis, and otherwise doesn’t impose any limit on the number of views that can be scrolled.

## Getting the scroll target behavior

- [paging](/documentation/swiftui/scrolltargetbehavior/paging)
- [viewAligned(limitBehavior:)](/documentation/swiftui/scrolltargetbehavior/viewaligned(limitbehavior:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
