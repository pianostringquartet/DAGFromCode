---
title: strokeBorder(_:lineWidth:antialiased:)
description: Returns a view that is the result of filling the -sized border (aka inner stroke) of  with . This is equivalent to insetting  by  and stroking the resulting shape with  as the line-width.
source: https://developer.apple.com/documentation/swiftui/insettableshape/strokeborder(_:linewidth:antialiased:)
timestamp: 2025-10-29T00:13:27.569Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [insettableshape](/documentation/swiftui/insettableshape)

**Instance Method**

# strokeBorder(_:lineWidth:antialiased:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a view that is the result of filling the -sized border (aka inner stroke) of  with . This is equivalent to insetting  by  and stroking the resulting shape with  as the line-width.

```swift
func strokeBorder<S>(_ content: S, lineWidth: CGFloat = 1, antialiased: Bool = true) -> some View where S : ShapeStyle
```

## Setting the stroke border characteristics

- [strokeBorder(lineWidth:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(linewidth:antialiased:))
- [strokeBorder(_:style:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(_:style:antialiased:))
- [strokeBorder(style:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(style:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
