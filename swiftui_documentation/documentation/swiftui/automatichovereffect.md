---
title: AutomaticHoverEffect
description: The default hover effect based on the surrounding context.
source: https://developer.apple.com/documentation/swiftui/automatichovereffect
timestamp: 2025-10-29T00:15:12.411Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AutomaticHoverEffect

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+

> The default hover effect based on the surrounding context.

```swift
struct AutomaticHoverEffect
```

## Overview

The automatic effect will resolve to any [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:)) applied to the current View hierarchy, or a system-defined effect if no default effect has been defined.

You can also use [automatic](/documentation/swiftui/customhovereffect/automatic) to construct this hover effect.

## Conforms To

- [CustomHoverEffect](/documentation/swiftui/customhovereffect)

## Initializers

- [init()](/documentation/swiftui/automatichovereffect/init()) Creates an automatic hover effect.

## Supporting types

- [EmptyHoverEffect](/documentation/swiftui/emptyhovereffect)
- [HighlightHoverEffect](/documentation/swiftui/highlighthovereffect)
- [LiftHoverEffect](/documentation/swiftui/lifthovereffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
