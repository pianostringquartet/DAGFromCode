---
title: tipBackground(_:)
description: Sets the tip’s view background to a style. Currently this only applies to inline tips, not popover tips.
source: https://developer.apple.com/documentation/swiftui/view/tipbackground(_:)
timestamp: 2025-10-29T00:15:25.720Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tipBackground(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the tip’s view background to a style. Currently this only applies to inline tips, not popover tips.

```swift
nonisolated func tipBackground<S>(_ style: S) -> some View where S : ShapeStyle
```

## Parameters

**style**

An instance of a type that conforms to `ShapeStyle` that SwiftUI draws behind the modified view.



## Return Value

A view with the specified style drawn behind it.

## Providing tips

- [popoverTip(_:arrowEdge:action:)](/documentation/swiftui/view/popovertip(_:arrowedge:action:))
- [tipCornerRadius(_:antialiased:)](/documentation/swiftui/view/tipcornerradius(_:antialiased:))
- [tipImageSize(_:)](/documentation/swiftui/view/tipimagesize(_:))
- [tipViewStyle(_:)](/documentation/swiftui/view/tipviewstyle(_:))
- [tipImageStyle(_:)](/documentation/swiftui/view/tipimagestyle(_:))
- [tipImageStyle(_:_:)](/documentation/swiftui/view/tipimagestyle(_:_:))
- [tipImageStyle(_:_:_:)](/documentation/swiftui/view/tipimagestyle(_:_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
