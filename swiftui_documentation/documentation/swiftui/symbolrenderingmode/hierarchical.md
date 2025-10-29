---
title: hierarchical
description: A mode that renders symbols as multiple layers, with different opacities applied to the foreground style.
source: https://developer.apple.com/documentation/swiftui/symbolrenderingmode/hierarchical
timestamp: 2025-10-29T00:10:17.378Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolrenderingmode](/documentation/swiftui/symbolrenderingmode)

**Type Property**

# hierarchical

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that renders symbols as multiple layers, with different opacities applied to the foreground style.

```swift
static let hierarchical: SymbolRenderingMode
```

## Discussion

SwiftUI fills the first layer with the foreground style, and the others the secondary, and tertiary variants of the foreground style. You can specify these styles explicitly using the [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:)) and [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:)) modifiers. If you only specify a primary foreground style, SwiftUI automatically derives the others from that style. For example, you can render a filled exclamation mark triangle with purple as the tint color for the exclamation mark, and lower opacity purple for the triangle:

```swift
Image(systemName: "exclamationmark.triangle.fill")
    .symbolRenderingMode(.hierarchical)
    .foregroundStyle(Color.purple)
```

## Getting symbol rendering modes

- [monochrome](/documentation/swiftui/symbolrenderingmode/monochrome)
- [multicolor](/documentation/swiftui/symbolrenderingmode/multicolor)
- [palette](/documentation/swiftui/symbolrenderingmode/palette)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
