---
title: numericText(value:)
description: Creates a content transition intended to be used with  views displaying numbers.
source: https://developer.apple.com/documentation/swiftui/contenttransition/numerictext(value:)
timestamp: 2025-10-29T00:12:55.304Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contenttransition](/documentation/swiftui/contenttransition)

**Type Method**

# numericText(value:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a content transition intended to be used with  views displaying numbers.

```swift
static func numericText(value: Double) -> ContentTransition
```

## Parameters

**value**

The value represented by the `Text` view being animated. The difference between the old and new values when the text changes will be used to determine the animation direction.



## Return Value

A new content transition.

## Discussion

The example below creates a text view displaying a particular value, assigning the same value to the associated transition:

```swift
Text("\(value)")
    .contentTransition(.numericText(value: value))
```

## Getting content transitions

- [identity](/documentation/swiftui/contenttransition/identity)
- [interpolate](/documentation/swiftui/contenttransition/interpolate)
- [numericText(countsDown:)](/documentation/swiftui/contenttransition/numerictext(countsdown:))
- [opacity](/documentation/swiftui/contenttransition/opacity)
- [symbolEffect](/documentation/swiftui/contenttransition/symboleffect)
- [symbolEffect(_:options:)](/documentation/swiftui/contenttransition/symboleffect(_:options:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
