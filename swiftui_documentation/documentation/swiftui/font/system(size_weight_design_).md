---
title: system(size:weight:design:)
description: Specifies a system font to use, along with the style, weight, and any design parameters you want applied to the text.
source: https://developer.apple.com/documentation/swiftui/font/system(size:weight:design:)
timestamp: 2025-10-29T00:15:11.372Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Type Method**

# system(size:weight:design:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Specifies a system font to use, along with the style, weight, and any design parameters you want applied to the text.

```swift
static func system(size: CGFloat, weight: Font.Weight? = nil, design: Font.Design? = nil) -> Font
```

## Discussion

Use this function to create a system font by specifying the size and weight, and a type design together. The following styles the system font as 17 point, [semibold](/documentation/swiftui/font/weight/semibold) text:

```swift
Text("Hello").font(.system(size: 17, weight: .semibold))
```

While the following styles the text as 17 point [bold](/documentation/swiftui/font/weight/bold), and applies a `serif` [Design](/documentation/swiftui/font/design) to the system font:

```swift
Text("Hello").font(.system(size: 17, weight: .bold, design: .serif))
```

Both `weight` and `design` can be optional. When you do not provide a `weight` or `design`, the system can pick one based on the current context, which may not be [regular](/documentation/swiftui/font/weight/regular) or [default](/documentation/swiftui/font/design/default) in certain context. The following example styles the text as 17 point system font using [rounded](/documentation/swiftui/font/design/rounded) design, while its weight can depend on the current context:

```swift
Text("Hello").font(.system(size: 17, design: .rounded))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
