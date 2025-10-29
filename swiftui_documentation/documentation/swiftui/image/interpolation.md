---
title: Image.Interpolation
description: The level of quality for rendering an image that requires interpolation, such as a scaled image.
source: https://developer.apple.com/documentation/swiftui/image/interpolation
timestamp: 2025-10-29T00:14:01.020Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Enumeration**

# Image.Interpolation

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The level of quality for rendering an image that requires interpolation, such as a scaled image.

```swift
enum Interpolation
```

## Overview

The [interpolation(_:)](/documentation/swiftui/image/interpolation(_:)) modifier specifies the interpolation behavior when using the [resizable(capInsets:resizingMode:)](/documentation/swiftui/image/resizable(capinsets:resizingmode:)) modifier on an [Image](/documentation/swiftui/image). Use this behavior to prioritize rendering performance or image quality.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting interpolation options

- [Image.Interpolation.high](/documentation/swiftui/image/interpolation/high) A value that indicates a high level of interpolation quality, which may slow down image rendering.
- [Image.Interpolation.low](/documentation/swiftui/image/interpolation/low) A value that indicates a low level of interpolation quality, which may speed up image rendering.
- [Image.Interpolation.medium](/documentation/swiftui/image/interpolation/medium) A value that indicates a medium level of interpolation quality, between the low- and high-quality values.
- [Image.Interpolation.none](/documentation/swiftui/image/interpolation/none) A value that indicates SwiftUI doesn’t interpolate image data.

## Specifying rendering behavior

- [antialiased(_:)](/documentation/swiftui/image/antialiased(_:))
- [symbolRenderingMode(_:)](/documentation/swiftui/image/symbolrenderingmode(_:))
- [renderingMode(_:)](/documentation/swiftui/image/renderingmode(_:))
- [interpolation(_:)](/documentation/swiftui/image/interpolation(_:))
- [Image.TemplateRenderingMode](/documentation/swiftui/image/templaterenderingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
