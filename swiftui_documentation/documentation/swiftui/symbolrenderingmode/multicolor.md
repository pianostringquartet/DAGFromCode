---
title: multicolor
description: A mode that renders symbols as multiple layers with their inherit styles.
source: https://developer.apple.com/documentation/swiftui/symbolrenderingmode/multicolor
timestamp: 2025-10-29T00:09:40.374Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolrenderingmode](/documentation/swiftui/symbolrenderingmode)

**Type Property**

# multicolor

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that renders symbols as multiple layers with their inherit styles.

```swift
static let multicolor: SymbolRenderingMode
```

## Discussion

The layers may be filled with their own inherent styles, or the foreground style. For example, you can render a filled exclamation mark triangle in its inherent colors, with yellow for the triangle and white for the exclamation mark:

```swift
Image(systemName: "exclamationmark.triangle.fill")
    .symbolRenderingMode(.multicolor)
```

## Getting symbol rendering modes

- [hierarchical](/documentation/swiftui/symbolrenderingmode/hierarchical)
- [monochrome](/documentation/swiftui/symbolrenderingmode/monochrome)
- [palette](/documentation/swiftui/symbolrenderingmode/palette)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
