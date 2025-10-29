---
title: ViewAlignedScrollTargetBehavior
description: The scroll behavior that aligns scroll targets to view-based geometry.
source: https://developer.apple.com/documentation/swiftui/viewalignedscrolltargetbehavior
timestamp: 2025-10-29T00:15:12.400Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ViewAlignedScrollTargetBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The scroll behavior that aligns scroll targets to view-based geometry.

```swift
struct ViewAlignedScrollTargetBehavior
```

## Overview

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

You configure which views should be used for settling using the [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:)) modifier. Apply this modifier to a layout container like [Lazy VStack](/documentation/swiftui/lazyvstack) or [HStack](/documentation/swiftui/hstack) and each individual view in that layout will be considered for alignment.

You can customize whether the view aligned behavior limits the number of views that can be scrolled at a time by using the [Limit Behavior](/documentation/swiftui/viewalignedscrolltargetbehavior/limitbehavior) type. Provide a value of [always](/documentation/swiftui/viewalignedscrolltargetbehavior/limitbehavior/always) to always have the behavior only allow a few views to be scrolled at a time.

By default, the view aligned behavior will limit the number of views it scrolls when in a compact horizontal size class when scrollable in the horizontal axis, when in a compact vertical size class when scrollable in the vertical axis, and otherwise does not impose any limit on the number of views that can be scrolled.

## Conforms To

- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)

## Creating the target behavior

- [init(limitBehavior:)](/documentation/swiftui/viewalignedscrolltargetbehavior/init(limitbehavior:)) Creates a view aligned scroll behavior.
- [ViewAlignedScrollTargetBehavior.LimitBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior/limitbehavior) A type that defines the amount of views that can be scrolled at a time.

## Initializers

- [init(anchor:)](/documentation/swiftui/viewalignedscrolltargetbehavior/init(anchor:)) Creates a view aligned scroll behavior with the provided anchor.
- [init(limitBehavior:anchor:)](/documentation/swiftui/viewalignedscrolltargetbehavior/init(limitbehavior:anchor:)) Creates a view aligned scroll behavior with the provided limit behavior and anchor.

## Defining scroll targets

- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:))
- [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:))
- [ScrollTarget](/documentation/swiftui/scrolltarget)
- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)
- [ScrollTargetBehaviorContext](/documentation/swiftui/scrolltargetbehaviorcontext)
- [PagingScrollTargetBehavior](/documentation/swiftui/pagingscrolltargetbehavior)
- [AnyScrollTargetBehavior](/documentation/swiftui/anyscrolltargetbehavior)
- [ScrollTargetBehaviorProperties](/documentation/swiftui/scrolltargetbehaviorproperties)
- [ScrollTargetBehaviorPropertiesContext](/documentation/swiftui/scrolltargetbehaviorpropertiescontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
