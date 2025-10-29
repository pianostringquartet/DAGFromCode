---
title: HStackLayout
description: A horizontal container that you can use in conditional layouts.
source: https://developer.apple.com/documentation/swiftui/hstacklayout
timestamp: 2025-10-29T00:09:32.173Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# HStackLayout

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A horizontal container that you can use in conditional layouts.

```swift
@frozen struct HStackLayout
```

## Overview

This layout container behaves like an [HStack](/documentation/swiftui/hstack), but conforms to the [Layout](/documentation/swiftui/layout) protocol so you can use it in the conditional layouts that you construct with [Any Layout](/documentation/swiftui/anylayout). If you don’t need a conditional layout, use [HStack](/documentation/swiftui/hstack) instead.

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Layout](/documentation/swiftui/layout)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a horizontal stack

- [init(alignment:spacing:)](/documentation/swiftui/hstacklayout/init(alignment:spacing:)) Creates a horizontal stack with the specified spacing and vertical alignment.

## Getting the stack’s properties

- [alignment](/documentation/swiftui/hstacklayout/alignment) The vertical alignment of subviews.
- [spacing](/documentation/swiftui/hstacklayout/spacing) The distance between adjacent subviews.

## Transitioning between layout types

- [AnyLayout](/documentation/swiftui/anylayout)
- [VStackLayout](/documentation/swiftui/vstacklayout)
- [ZStackLayout](/documentation/swiftui/zstacklayout)
- [GridLayout](/documentation/swiftui/gridlayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
