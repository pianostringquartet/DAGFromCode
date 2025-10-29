---
title: resolveHDR(in:)
description: Evaluates this color to a resolved color with content headroom, given a set of environment values.
source: https://developer.apple.com/documentation/swiftui/color/resolvehdr(in:)
timestamp: 2025-10-29T00:14:08.011Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Instance Method**

# resolveHDR(in:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Evaluates this color to a resolved color with content headroom, given a set of environment values.

```swift
func resolveHDR(in environment: EnvironmentValues) -> Color.ResolvedHDR
```

## Parameters

**environment**

The environment of the view displaying the color.



## Return Value

The color’s value in the sRGB color space.

## Working with high dynamic range (HDR) colors

- [Color.ResolvedHDR](/documentation/swiftui/color/resolvedhdr)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
