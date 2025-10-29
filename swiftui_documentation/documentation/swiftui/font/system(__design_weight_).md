---
title: system(_:design:weight:)
description: Gets a system font that uses the specified style, design, and weight.
source: https://developer.apple.com/documentation/swiftui/font/system(_:design:weight:)
timestamp: 2025-10-29T00:10:14.903Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Type Method**

# system(_:design:weight:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Gets a system font that uses the specified style, design, and weight.

```swift
static func system(_ style: Font.TextStyle, design: Font.Design? = nil, weight: Font.Weight? = nil) -> Font
```

## Discussion

Use this method to create a system font that has the specified properties. The following example creates a system font with the [body](/documentation/swiftui/font/textstyle/body) text style, a [serif](/documentation/swiftui/font/design/serif) design, and a [bold](/documentation/swiftui/font/weight/bold) weight, and applies the font to a [Text](/documentation/swiftui/text) view using the [font(_:)](/documentation/swiftui/view/font(_:)) view modifier:

```swift
Text("Hello").font(.system(.body, design: .serif, weight: .bold))
```

The `design` and `weight` parameters are both optional. If you omit either, the system uses a default value for that parameter. The default values are typically [default](/documentation/swiftui/font/design/default) and [regular](/documentation/swiftui/font/weight/regular), respectively, but might vary depending on the context.

## Getting system fonts

- [system(size:weight:design:)](/documentation/swiftui/font/system(size:weight:design:)-697b2)
- [Font.Design](/documentation/swiftui/font/design)
- [Font.TextStyle](/documentation/swiftui/font/textstyle)
- [Font.Weight](/documentation/swiftui/font/weight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
