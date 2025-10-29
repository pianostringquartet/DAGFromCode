---
title: distance(to:along:)
description: Gets the preferred spacing distance along the specified axis to the view that returns a specified spacing preference.
source: https://developer.apple.com/documentation/swiftui/viewspacing/distance(to:along:)
timestamp: 2025-10-29T00:14:42.245Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewspacing](/documentation/swiftui/viewspacing)

**Instance Method**

# distance(to:along:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Gets the preferred spacing distance along the specified axis to the view that returns a specified spacing preference.

```swift
func distance(to next: ViewSpacing, along axis: Axis) -> CGFloat
```

## Parameters

**next**

The spacing preferences instance of the adjacent view.



**axis**

The axis that the two views align on.



## Return Value

A floating point value that represents the smallest distance in points between two views that satisfies the spacing preferences of both this view and the adjacent views on their shared edge.

## Discussion

Call this method from your implementation of [Layout](/documentation/swiftui/layout) protocol methods if you need to measure the default spacing between two views in a custom layout. Call the method on the first view’s preferences instance, and provide the second view’s preferences instance as input.

For example, consider two views that appear in a custom horizontal stack. The following distance call gets the preferred spacing between these views, where `spacing1` contains the preferences of a first view, and `spacing2` contains the preferences of a second view:

```swift
let distance = spacing1.distance(to: spacing2, axis: .horizontal)
```

The method first determines, based on the axis and the ordering, that the views abut on the trailing edge of the first view and the leading edge of the second. It then gets the spacing preferences for the corresponding edges of each view, and returns the greater of the two values. This results in the smallest value that provides enough space to satisfy the preferences of both views.

> [!NOTE]
> This method returns the default spacing between views, but a layout can choose to ignore the value and use custom spacing instead.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
