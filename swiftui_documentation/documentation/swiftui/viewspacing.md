---
title: ViewSpacing
description: A collection of the geometric spacing preferences of a view.
source: https://developer.apple.com/documentation/swiftui/viewspacing
timestamp: 2025-10-29T00:10:15.686Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ViewSpacing

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A collection of the geometric spacing preferences of a view.

```swift
struct ViewSpacing
```

## Overview

This type represents how much space a view prefers to have between it and the next view in a layout. The type stores independent values for each of the top, bottom, leading, and trailing edges, and can also record different values for different kinds of adjacent views. For example, it might contain one value for the spacing to the next text view along the top and bottom edges, other values for the spacing to text views on other edges, and yet other values for other kinds of views. Spacing preferences can also vary by platform.

Your [Layout](/documentation/swiftui/layout) type doesn’t have to take preferred spacing into account, but if it does, you can use the [spacing](/documentation/swiftui/layoutsubview/spacing) preferences of the subviews in your layout container to:

- Add space between subviews when you implement the [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:)) method.
- Create a spacing preferences instance for the container view by implementing the [spacing(subviews:cache:)](/documentation/swiftui/layout/spacing(subviews:cache:)) method.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating spacing instances

- [init()](/documentation/swiftui/viewspacing/init()) Initializes an instance with default spacing values.
- [zero](/documentation/swiftui/viewspacing/zero) A view spacing instance that contains zero on all edges.

## Measuring spacing distance

- [distance(to:along:)](/documentation/swiftui/viewspacing/distance(to:along:)) Gets the preferred spacing distance along the specified axis to the view that returns a specified spacing preference.

## Merging spacing instances

- [formUnion(_:edges:)](/documentation/swiftui/viewspacing/formunion(_:edges:)) Merges the spacing preferences of another spacing instance with this instance for a specified set of edges.
- [union(_:edges:)](/documentation/swiftui/viewspacing/union(_:edges:)) Gets a new value that merges the spacing preferences of another spacing instance with this instance for a specified set of edges.

## Configuring a custom layout

- [LayoutProperties](/documentation/swiftui/layoutproperties)
- [ProposedViewSize](/documentation/swiftui/proposedviewsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
