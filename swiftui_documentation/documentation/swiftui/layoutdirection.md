---
title: LayoutDirection
description: A direction in which SwiftUI can lay out content.
source: https://developer.apple.com/documentation/swiftui/layoutdirection
timestamp: 2025-10-29T00:14:17.435Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# LayoutDirection

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A direction in which SwiftUI can lay out content.

```swift
enum LayoutDirection
```

## Overview

SwiftUI supports both left-to-right and right-to-left directions for laying out content to support different languages and locales. The system sets the value based on the user’s locale, but you can also use the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifier to override the direction for a view and its child views:

```swift
MyView()
    .environment(\.layoutDirection, .rightToLeft)
```

You can also read the [layout Direction](/documentation/swiftui/environmentvalues/layoutdirection) environment value to find out which direction applies to a particular environment. However, in many cases, you don’t need to take any action based on this value. SwiftUI horizontally flips the x position of each view within its parent, so layout calculations automatically produce the desired effect for both modes without any changes.

## Conforms To

- [CaseIterable](/documentation/Swift/CaseIterable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting layout directions

- [LayoutDirection.leftToRight](/documentation/swiftui/layoutdirection/lefttoright) A left-to-right layout direction.
- [LayoutDirection.rightToLeft](/documentation/swiftui/layoutdirection/righttoleft) A right-to-left layout direction.

## Creating a layout direction

- [init(_:)](/documentation/swiftui/layoutdirection/init(_:)) Create a direction from its UITraitEnvironmentLayoutDirection equivalent.

## Setting a layout direction

- [layoutDirectionBehavior(_:)](/documentation/swiftui/view/layoutdirectionbehavior(_:))
- [LayoutDirectionBehavior](/documentation/swiftui/layoutdirectionbehavior)
- [layoutDirection](/documentation/swiftui/environmentvalues/layoutdirection)
- [LayoutRotationUnaryLayout](/documentation/swiftui/layoutrotationunarylayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
