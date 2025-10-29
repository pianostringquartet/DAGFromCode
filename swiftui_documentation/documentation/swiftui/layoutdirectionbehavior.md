---
title: LayoutDirectionBehavior
description: A description of what should happen when the layout direction changes.
source: https://developer.apple.com/documentation/swiftui/layoutdirectionbehavior
timestamp: 2025-10-29T00:13:02.815Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# LayoutDirectionBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A description of what should happen when the layout direction changes.

```swift
enum LayoutDirectionBehavior
```

## Overview

A `LayoutDirectionBehavior` can be used with the `layoutDirectionBehavior` view modifier or the `layoutDirectionBehavior` property of `Shape`.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting behaviors

- [LayoutDirectionBehavior.fixed](/documentation/swiftui/layoutdirectionbehavior/fixed) A behavior that doesn’t mirror when the layout direction changes.
- [mirrors](/documentation/swiftui/layoutdirectionbehavior/mirrors) A behavior that mirrors when the layout direction is right-to-left.
- [LayoutDirectionBehavior.mirrors(in:)](/documentation/swiftui/layoutdirectionbehavior/mirrors(in:)) A behavior that mirrors when the layout direction has the specified value.

## Setting a layout direction

- [layoutDirectionBehavior(_:)](/documentation/swiftui/view/layoutdirectionbehavior(_:))
- [layoutDirection](/documentation/swiftui/environmentvalues/layoutdirection)
- [LayoutDirection](/documentation/swiftui/layoutdirection)
- [LayoutRotationUnaryLayout](/documentation/swiftui/layoutrotationunarylayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
