---
title: LegibilityWeight
description: The Accessibility Bold Text user setting options.
source: https://developer.apple.com/documentation/swiftui/legibilityweight
timestamp: 2025-10-29T00:09:23.388Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# LegibilityWeight

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The Accessibility Bold Text user setting options.

```swift
enum LegibilityWeight
```

## Overview

The app can’t override the user’s choice before iOS 16, tvOS 16 or watchOS 9.0.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting weights

- [LegibilityWeight.regular](/documentation/swiftui/legibilityweight/regular) Use regular font weight (no Accessibility Bold).
- [LegibilityWeight.bold](/documentation/swiftui/legibilityweight/bold) Use heavier font weight (force Accessibility Bold).

## Creating a weight

- [init(_:)](/documentation/swiftui/legibilityweight/init(_:)) Creates a legibility weight from its UILegibilityWeight equivalent.

## Improving legibility

- [accessibilityShowButtonShapes](/documentation/swiftui/environmentvalues/accessibilityshowbuttonshapes)
- [accessibilityReduceTransparency](/documentation/swiftui/environmentvalues/accessibilityreducetransparency)
- [legibilityWeight](/documentation/swiftui/environmentvalues/legibilityweight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
