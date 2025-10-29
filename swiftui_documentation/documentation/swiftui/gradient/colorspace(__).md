---
title: colorSpace(_:)
description: Returns a version of the gradient that will use a specified color space for interpolating between its colors.
source: https://developer.apple.com/documentation/swiftui/gradient/colorspace(_:)
timestamp: 2025-10-29T00:09:36.246Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gradient](/documentation/swiftui/gradient)

**Instance Method**

# colorSpace(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Returns a version of the gradient that will use a specified color space for interpolating between its colors.

```swift
func colorSpace(_ space: Gradient.ColorSpace) -> AnyGradient
```

## Parameters

**space**

The color space the new gradient will use to interpolate its constituent colors.



## Return Value

A new gradient that interpolates its colors in the specified color space.

## Discussion

```swift
Rectangle().fill(.linearGradient(
    colors: [.white, .blue]).colorSpace(.perceptual))
```

## Working with color spaces

- [Gradient.ColorSpace](/documentation/swiftui/gradient/colorspace)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
