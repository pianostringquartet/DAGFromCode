---
title: Edge.Corner.Style
description: The per-corner style of a rectangular shape. A corner can be of fixed corner radius, or be concentric to the container shape. To create such a shape with configurable corner styles, call one of the initializers of  and pass in the style.
source: https://developer.apple.com/documentation/swiftui/edge/corner/style
timestamp: 2025-10-29T00:15:25.935Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [edge](/documentation/swiftui/edge) › [corner](/documentation/swiftui/edge/corner)

**Structure**

# Edge.Corner.Style

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The per-corner style of a rectangular shape. A corner can be of fixed corner radius, or be concentric to the container shape. To create such a shape with configurable corner styles, call one of the initializers of  and pass in the style.

```swift
struct Style
```

## Overview

> [!NOTE]
> [Concentric Rectangle](/documentation/swiftui/concentricrectangle), [Rounded Rectangular Shape](/documentation/swiftui/roundedrectangularshape)

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByFloatLiteral](/documentation/Swift/ExpressibleByFloatLiteral)
- [ExpressibleByIntegerLiteral](/documentation/Swift/ExpressibleByIntegerLiteral)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [concentric](/documentation/swiftui/edge/corner/style/concentric) The concentric corner style. When a corner is concentric to its container, it will adjust the current corner radius to ensure that the container corner radius equals to current corner radius plus the distance between corners.

## Type Methods

- [concentric(minimum:)](/documentation/swiftui/edge/corner/style/concentric(minimum:)) The concentric corner style with an optional minimum corner style. When a corner is concentric to its container, it will adjust the current corner radius to ensure that the container corner radius equals to current corner radius plus the distance between corners. If the current corner is too far away from the container corner, the radius will be resolved as zero unless a minimum corner style is provided.
- [fixed(_:)](/documentation/swiftui/edge/corner/style/fixed(_:)) The fixed radius corner style.

## Default Implementations

- [ExpressibleByFloatLiteral Implementations](/documentation/swiftui/edge/corner/style/expressiblebyfloatliteral-implementations)
- [ExpressibleByIntegerLiteral Implementations](/documentation/swiftui/edge/corner/style/expressiblebyintegerliteral-implementations)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
