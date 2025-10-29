---
title: strokeBorder(_:style:antialiased:)
description: Returns a view that is the result of insetting  by , stroking the resulting shape with , and then filling with .
source: https://developer.apple.com/documentation/swiftui/insettableshape/strokeborder(_:style:antialiased:)
timestamp: 2025-10-29T00:09:45.198Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [insettableshape](/documentation/swiftui/insettableshape)

**Instance Method**

# strokeBorder(_:style:antialiased:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a view that is the result of insetting  by , stroking the resulting shape with , and then filling with .

```swift
func strokeBorder<S>(_ content: S, style: StrokeStyle, antialiased: Bool = true) -> some View where S : ShapeStyle
```

## Setting the stroke border characteristics

- [strokeBorder(_:lineWidth:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(_:linewidth:antialiased:))
- [strokeBorder(lineWidth:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(linewidth:antialiased:))
- [strokeBorder(style:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(style:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
