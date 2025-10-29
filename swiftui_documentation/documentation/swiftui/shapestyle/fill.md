---
title: fill
description: An overlay fill style for filling shapes.
source: https://developer.apple.com/documentation/swiftui/shapestyle/fill
timestamp: 2025-10-29T00:10:38.396Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Property**

# fill

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> An overlay fill style for filling shapes.

```swift
static var fill: FillShapeStyle { get }
```

## Discussion

This shape style is appropriate for items situated on top of an existing background color. It incorporates transparency to allow the background color to show through.

Use the primary version of this style to fill thin or small shapes, such as the track of a slider on iOS. Use the secondary version of this style to fill medium-size shapes, such as the background of a switch on iOS. Use the tertiary version of this style to fill large shapes, such as input fields, search bars, or buttons on iOS. Use the quaternary version of this style to fill large areas that contain complex content, such as an expanded table cell on iOS.

## Semantic styles

- [foreground](/documentation/swiftui/shapestyle/foreground)
- [background](/documentation/swiftui/shapestyle/background)
- [selection](/documentation/swiftui/shapestyle/selection)
- [separator](/documentation/swiftui/shapestyle/separator)
- [tint](/documentation/swiftui/shapestyle/tint)
- [placeholder](/documentation/swiftui/shapestyle/placeholder)
- [link](/documentation/swiftui/shapestyle/link)
- [windowBackground](/documentation/swiftui/shapestyle/windowbackground)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
