---
title: palette
description: A mode that renders symbols as multiple layers, with different styles applied to the layers.
source: https://developer.apple.com/documentation/swiftui/symbolrenderingmode/palette
timestamp: 2025-10-29T00:11:52.976Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolrenderingmode](/documentation/swiftui/symbolrenderingmode)

**Type Property**

# palette

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that renders symbols as multiple layers, with different styles applied to the layers.

```swift
static let palette: SymbolRenderingMode
```

## Discussion

In this mode SwiftUI maps each successively defined layer in the image to the next of the primary, secondary, and tertiary variants of the foreground style. You can specify these styles explicitly using the [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:)) and [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:)) modifiers. If you only specify a primary foreground style, SwiftUI automatically derives the others from that style. For example, you can render a filled exclamation mark triangle with yellow as the tint color for the exclamation mark, and fill the triangle with cyan:

```swift
Image(systemName: "exclamationmark.triangle.fill")
    .symbolRenderingMode(.palette)
    .foregroundStyle(Color.yellow, Color.cyan)
```

You can also omit the symbol rendering mode, as specifying multiple foreground styles implies switching to palette rendering mode:

```swift
Image(systemName: "exclamationmark.triangle.fill")
    .foregroundStyle(Color.yellow, Color.cyan)
```

## Getting symbol rendering modes

- [hierarchical](/documentation/swiftui/symbolrenderingmode/hierarchical)
- [monochrome](/documentation/swiftui/symbolrenderingmode/monochrome)
- [multicolor](/documentation/swiftui/symbolrenderingmode/multicolor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
