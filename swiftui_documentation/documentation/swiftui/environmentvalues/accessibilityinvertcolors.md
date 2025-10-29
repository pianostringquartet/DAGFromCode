---
title: accessibilityInvertColors
description: Whether the system preference for Invert Colors is enabled.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/accessibilityinvertcolors
timestamp: 2025-10-29T00:13:30.577Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# accessibilityInvertColors

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Whether the system preference for Invert Colors is enabled.

```swift
var accessibilityInvertColors: Bool { get }
```

## Discussion

If this property’s value is true then the display will be inverted. In these cases it may be needed for UI drawing to be adjusted to in order to display optimally when inverted.

## Managing color

- [accessibilityIgnoresInvertColors(_:)](/documentation/swiftui/view/accessibilityignoresinvertcolors(_:))
- [accessibilityDifferentiateWithoutColor](/documentation/swiftui/environmentvalues/accessibilitydifferentiatewithoutcolor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
