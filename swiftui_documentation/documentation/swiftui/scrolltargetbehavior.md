---
title: ScrollTargetBehavior
description: A type that defines the scroll behavior of a scrollable view.
source: https://developer.apple.com/documentation/swiftui/scrolltargetbehavior
timestamp: 2025-10-29T00:09:33.824Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ScrollTargetBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A type that defines the scroll behavior of a scrollable view.

```swift
protocol ScrollTargetBehavior
```

## Overview

A scrollable view calculates where scroll gestures should end using its deceleration rate and the state of its scroll gesture by default. A scroll behavior allows for customizing this logic.

You define a scroll behavior using the [updateTarget(_:context:)](/documentation/swiftui/scrolltargetbehavior/updatetarget(_:context:)) method.

Using this method, you can control where someone can scroll in a scrollable view. For example, you can create a custom scroll behavior that aligns to every 10 points by doing the following:

```swift
struct BasicScrollTargetBehavior: ScrollTargetBehavior {
    func updateTarget(_ target: inout Target, context: TargetContext) {
        // Align to every 1/10 the size of the scroll view.
        target.rect.x.round(
            toMultipleOf: round(context.containerSize.width / 10.0))
    }
}
```

### Paging Behavior

SwiftUI offers built in scroll behaviors. One such behavior is the [Paging Scroll Target Behavior](/documentation/swiftui/pagingscrolltargetbehavior) which uses the geometry of the scroll view to decide where to allow scrolls to end.

In the following example, every view in the lazy stack is flexible in both directions and the scroll view will settle to container aligned boundaries.

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

### View Aligned Behavior

SwiftUI also offers a [View Aligned Scroll Target Behavior](/documentation/swiftui/viewalignedscrolltargetbehavior) scroll behavior that will always settle on the geometry of individual views.

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
.safeAreaPadding(.horizontal, 20.0)
```

You configure which views should be used for settling using the [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:)) modifier. Apply this modifier to a layout container like [Lazy VStack](/documentation/swiftui/lazyvstack) or [HStack](/documentation/swiftui/hstack) and each individual view in that layout will be considered for alignment.

Use types conforming to this protocol with the [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:)) modifier.

## Conforming Types

- [AnyScrollTargetBehavior](/documentation/swiftui/anyscrolltargetbehavior)
- [PagingScrollTargetBehavior](/documentation/swiftui/pagingscrolltargetbehavior)
- [ViewAlignedScrollTargetBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior)

## Getting the scroll target behavior

- [paging](/documentation/swiftui/scrolltargetbehavior/paging) The scroll behavior that aligns scroll targets to container-based geometry.
- [viewAligned](/documentation/swiftui/scrolltargetbehavior/viewaligned) The scroll behavior that aligns scroll targets to view-based geometry.
- [viewAligned(limitBehavior:)](/documentation/swiftui/scrolltargetbehavior/viewaligned(limitbehavior:)) The scroll behavior that aligns scroll targets to view-based geometry.

## Updating the proposed target

- [updateTarget(_:context:)](/documentation/swiftui/scrolltargetbehavior/updatetarget(_:context:)) Updates the proposed target that a scrollable view should scroll to.
- [ScrollTargetBehavior.TargetContext](/documentation/swiftui/scrolltargetbehavior/targetcontext) The context in which a scroll behavior updates the scroll target.

## Instance Methods

- [properties(context:)](/documentation/swiftui/scrolltargetbehavior/properties(context:)) Properties of this behavior

## Type Aliases

- [ScrollTargetBehavior.Properties](/documentation/swiftui/scrolltargetbehavior/properties) The properties of a scroll behavior
- [ScrollTargetBehavior.PropertiesContext](/documentation/swiftui/scrolltargetbehavior/propertiescontext) The properties context of a scroll behavior.

## Type Methods

- [viewAligned(anchor:)](/documentation/swiftui/scrolltargetbehavior/viewaligned(anchor:)) The scroll behavior that aligns scroll targets to view-based geometry.
- [viewAligned(limitBehavior:anchor:)](/documentation/swiftui/scrolltargetbehavior/viewaligned(limitbehavior:anchor:)) The scroll behavior that aligns scroll targets to view-based geometry.

## Defining scroll targets

- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:))
- [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:))
- [ScrollTarget](/documentation/swiftui/scrolltarget)
- [ScrollTargetBehaviorContext](/documentation/swiftui/scrolltargetbehaviorcontext)
- [PagingScrollTargetBehavior](/documentation/swiftui/pagingscrolltargetbehavior)
- [ViewAlignedScrollTargetBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior)
- [AnyScrollTargetBehavior](/documentation/swiftui/anyscrolltargetbehavior)
- [ScrollTargetBehaviorProperties](/documentation/swiftui/scrolltargetbehaviorproperties)
- [ScrollTargetBehaviorPropertiesContext](/documentation/swiftui/scrolltargetbehaviorpropertiescontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
