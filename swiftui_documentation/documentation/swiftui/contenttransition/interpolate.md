---
title: interpolate
description: A content transition that indicates the views attempt to interpolate their contents during transitions, where appropriate.
source: https://developer.apple.com/documentation/swiftui/contenttransition/interpolate
timestamp: 2025-10-29T00:15:15.583Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contenttransition](/documentation/swiftui/contenttransition)

**Type Property**

# interpolate

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A content transition that indicates the views attempt to interpolate their contents during transitions, where appropriate.

```swift
static let interpolate: ContentTransition
```

## Discussion

Text views can interpolate transitions when the text views have identical strings. Matching glyph pairs can animate changes to their color, position, size, and any variable properties. Interpolation can apply within a [Design](/documentation/swiftui/font/design) case, but not between cases, or between entirely different fonts. For example, you can interpolate a change between [thin](/documentation/swiftui/font/weight/thin) and [black](/documentation/swiftui/font/weight/black) variations of a font, since these are both cases of [Weight](/documentation/swiftui/font/weight). However, you can’t interpolate between the default design of a font and its Italic version, because these are different fonts. Any changes that can’t show an interpolated animation use an opacity animation instead.

Symbol images created with the [init(systemName:)](/documentation/swiftui/image/init(systemname:)) initializer work the same way as text: changes within the same symbol attempt to interpolate the symbol’s paths. When interpolation is unavailable, the system uses an opacity transition instead.

## Getting content transitions

- [identity](/documentation/swiftui/contenttransition/identity)
- [numericText(countsDown:)](/documentation/swiftui/contenttransition/numerictext(countsdown:))
- [numericText(value:)](/documentation/swiftui/contenttransition/numerictext(value:))
- [opacity](/documentation/swiftui/contenttransition/opacity)
- [symbolEffect](/documentation/swiftui/contenttransition/symboleffect)
- [symbolEffect(_:options:)](/documentation/swiftui/contenttransition/symboleffect(_:options:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
