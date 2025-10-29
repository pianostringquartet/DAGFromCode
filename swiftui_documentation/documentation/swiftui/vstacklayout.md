---
title: VStackLayout
description: A vertical container that you can use in conditional layouts.
source: https://developer.apple.com/documentation/swiftui/vstacklayout
timestamp: 2025-10-29T00:14:50.819Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# VStackLayout

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A vertical container that you can use in conditional layouts.

```swift
@frozen struct VStackLayout
```

## Overview

This layout container behaves like a [VStack](/documentation/swiftui/vstack), but conforms to the [Layout](/documentation/swiftui/layout) protocol so you can use it in the conditional layouts that you construct with [Any Layout](/documentation/swiftui/anylayout). If you don’t need a conditional layout, use [VStack](/documentation/swiftui/vstack) instead.

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Layout](/documentation/swiftui/layout)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a vertical stack

- [init(alignment:spacing:)](/documentation/swiftui/vstacklayout/init(alignment:spacing:)) Creates a vertical stack with the specified spacing and horizontal alignment.

## Getting the stack’s properties

- [alignment](/documentation/swiftui/vstacklayout/alignment) The horizontal alignment of subviews.
- [spacing](/documentation/swiftui/vstacklayout/spacing) The distance between adjacent subviews.

## Transitioning between layout types

- [AnyLayout](/documentation/swiftui/anylayout)
- [HStackLayout](/documentation/swiftui/hstacklayout)
- [ZStackLayout](/documentation/swiftui/zstacklayout)
- [GridLayout](/documentation/swiftui/gridlayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
