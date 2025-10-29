---
title: windowBackground
description: A style appropriate for elements that should match the background of their containing window.
source: https://developer.apple.com/documentation/swiftui/shapestyle/windowbackground
timestamp: 2025-10-29T00:11:37.599Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Property**

# windowBackground

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> A style appropriate for elements that should match the background of their containing window.

```swift
static var windowBackground: WindowBackgroundShapeStyle { get }
```

## Discussion

On macOS, this has a unique appearance compared to the default `ShapeStyle.background`. It matches the default background of a window: a wallpaper-tinted light gray in the light appearance and a wallpaper-tinted dark gray in the dark appearance.

On visionOS, the default glass window background can only be created using `glassBackgroundEffect`.

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Semantic styles

- [foreground](/documentation/swiftui/shapestyle/foreground)
- [background](/documentation/swiftui/shapestyle/background)
- [selection](/documentation/swiftui/shapestyle/selection)
- [separator](/documentation/swiftui/shapestyle/separator)
- [tint](/documentation/swiftui/shapestyle/tint)
- [placeholder](/documentation/swiftui/shapestyle/placeholder)
- [link](/documentation/swiftui/shapestyle/link)
- [fill](/documentation/swiftui/shapestyle/fill)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
