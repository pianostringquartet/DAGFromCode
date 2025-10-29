---
title: Image.TemplateRenderingMode
description: A type that indicates how SwiftUI renders images.
source: https://developer.apple.com/documentation/swiftui/image/templaterenderingmode
timestamp: 2025-10-29T00:14:25.467Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Enumeration**

# Image.TemplateRenderingMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that indicates how SwiftUI renders images.

```swift
enum TemplateRenderingMode
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting rendering modes

- [Image.TemplateRenderingMode.original](/documentation/swiftui/image/templaterenderingmode/original) A mode that renders pixels of bitmap images as-is.
- [Image.TemplateRenderingMode.template](/documentation/swiftui/image/templaterenderingmode/template) A mode that renders all non-transparent pixels as the foreground color.

## Specifying rendering behavior

- [antialiased(_:)](/documentation/swiftui/image/antialiased(_:))
- [symbolRenderingMode(_:)](/documentation/swiftui/image/symbolrenderingmode(_:))
- [renderingMode(_:)](/documentation/swiftui/image/renderingmode(_:))
- [interpolation(_:)](/documentation/swiftui/image/interpolation(_:))
- [Image.Interpolation](/documentation/swiftui/image/interpolation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
