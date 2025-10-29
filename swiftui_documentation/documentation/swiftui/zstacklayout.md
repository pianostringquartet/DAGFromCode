---
title: ZStackLayout
description: An overlaying container that you can use in conditional layouts.
source: https://developer.apple.com/documentation/swiftui/zstacklayout
timestamp: 2025-10-29T00:10:49.743Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ZStackLayout

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> An overlaying container that you can use in conditional layouts.

```swift
@frozen struct ZStackLayout
```

## Overview

This layout container behaves like a [ZStack](/documentation/swiftui/zstack), but conforms to the [Layout](/documentation/swiftui/layout) protocol so you can use it in the conditional layouts that you construct with [Any Layout](/documentation/swiftui/anylayout). If you don’t need a conditional layout, use [ZStack](/documentation/swiftui/zstack) instead.

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Layout](/documentation/swiftui/layout)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a stack

- [init(alignment:)](/documentation/swiftui/zstacklayout/init(alignment:)) Creates a stack with the specified alignment.

## Getting the stack’s properties

- [alignment](/documentation/swiftui/zstacklayout/alignment) The alignment of subviews.

## Transitioning between layout types

- [AnyLayout](/documentation/swiftui/anylayout)
- [HStackLayout](/documentation/swiftui/hstacklayout)
- [VStackLayout](/documentation/swiftui/vstacklayout)
- [GridLayout](/documentation/swiftui/gridlayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
