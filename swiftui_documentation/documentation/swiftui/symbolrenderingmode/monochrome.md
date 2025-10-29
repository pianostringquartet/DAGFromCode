---
title: monochrome
description: A mode that renders symbols as a single layer filled with the foreground style.
source: https://developer.apple.com/documentation/swiftui/symbolrenderingmode/monochrome
timestamp: 2025-10-29T00:12:19.410Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [symbolrenderingmode](/documentation/swiftui/symbolrenderingmode)

**Type Property**

# monochrome

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that renders symbols as a single layer filled with the foreground style.

```swift
static let monochrome: SymbolRenderingMode
```

## Discussion

For example, you can render a filled exclamation mark triangle in purple:

```swift
Image(systemName: "exclamationmark.triangle.fill")
    .symbolRenderingMode(.monochrome)
    .foregroundStyle(Color.purple)
```

## Getting symbol rendering modes

- [hierarchical](/documentation/swiftui/symbolrenderingmode/hierarchical)
- [multicolor](/documentation/swiftui/symbolrenderingmode/multicolor)
- [palette](/documentation/swiftui/symbolrenderingmode/palette)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
