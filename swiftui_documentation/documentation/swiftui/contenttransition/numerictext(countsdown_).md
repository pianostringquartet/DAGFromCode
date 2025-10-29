---
title: numericText(countsDown:)
description: Creates a content transition intended to be used with  views displaying numeric text. In certain environments changes to the text will enable a nonstandard transition tailored to numeric characters that count up or down.
source: https://developer.apple.com/documentation/swiftui/contenttransition/numerictext(countsdown:)
timestamp: 2025-10-29T00:09:36.788Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contenttransition](/documentation/swiftui/contenttransition)

**Type Method**

# numericText(countsDown:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a content transition intended to be used with  views displaying numeric text. In certain environments changes to the text will enable a nonstandard transition tailored to numeric characters that count up or down.

```swift
static func numericText(countsDown: Bool = false) -> ContentTransition
```

## Parameters

**countsDown**

True if the numbers represented by the text are counting downwards.



## Return Value

A new content transition.

## Getting content transitions

- [identity](/documentation/swiftui/contenttransition/identity)
- [interpolate](/documentation/swiftui/contenttransition/interpolate)
- [numericText(value:)](/documentation/swiftui/contenttransition/numerictext(value:))
- [opacity](/documentation/swiftui/contenttransition/opacity)
- [symbolEffect](/documentation/swiftui/contenttransition/symboleffect)
- [symbolEffect(_:options:)](/documentation/swiftui/contenttransition/symboleffect(_:options:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
