---
title: GridLayout
description: A grid that you can use in conditional layouts.
source: https://developer.apple.com/documentation/swiftui/gridlayout
timestamp: 2025-10-29T00:14:56.879Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GridLayout

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A grid that you can use in conditional layouts.

```swift
@frozen struct GridLayout
```

## Overview

This layout container behaves like a [Grid](/documentation/swiftui/grid), but conforms to the [Layout](/documentation/swiftui/layout) protocol so you can use it in the conditional layouts that you construct with [Any Layout](/documentation/swiftui/anylayout). If you don’t need a conditional layout, use [Grid](/documentation/swiftui/grid) instead.

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Layout](/documentation/swiftui/layout)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a grid

- [init(alignment:horizontalSpacing:verticalSpacing:)](/documentation/swiftui/gridlayout/init(alignment:horizontalspacing:verticalspacing:)) Creates a grid with the specified spacing and alignment.

## Getting the grid’s properties

- [alignment](/documentation/swiftui/gridlayout/alignment) The alignment of subviews.
- [horizontalSpacing](/documentation/swiftui/gridlayout/horizontalspacing) The horizontal distance between adjacent subviews.
- [verticalSpacing](/documentation/swiftui/gridlayout/verticalspacing) The vertical distance between adjacent subviews.

## Type Aliases

- [GridLayout.Body](/documentation/swiftui/gridlayout/body)

## Default Implementations

- [Layout Implementations](/documentation/swiftui/gridlayout/layout-implementations)

## Transitioning between layout types

- [AnyLayout](/documentation/swiftui/anylayout)
- [HStackLayout](/documentation/swiftui/hstacklayout)
- [VStackLayout](/documentation/swiftui/vstacklayout)
- [ZStackLayout](/documentation/swiftui/zstacklayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
