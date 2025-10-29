---
title: border(_:width:)
description: Adds a border to this view with the specified style and width.
source: https://developer.apple.com/documentation/swiftui/view/border(_:width:)
timestamp: 2025-10-29T00:09:11.780Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# border(_:width:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a border to this view with the specified style and width.

```swift
nonisolated func border<S>(_ content: S, width: CGFloat = 1) -> some View where S : ShapeStyle
```

## Parameters

**content**

A value that conforms to the [Shape Style](/documentation/swiftui/shapestyle) protocol, like a [Color](/documentation/swiftui/color) or [Hierarchical Shape Style](/documentation/swiftui/hierarchicalshapestyle), that SwiftUI uses to fill the border.



**width**

The thickness of the border. The default is 1 pixel.



## Return Value

A view that adds a border with the specified style and width to this view.

## Discussion

Use this modifier to draw a border of a specified width around the view’s frame. By default, the border appears inside the bounds of this view. For example, you can add a four-point wide border covers the text:

```swift
Text("Purple border inside the view bounds.")
    .border(Color.purple, width: 4)
```



To place a border around the outside of this view, apply padding of the same width before adding the border:

```swift
Text("Purple border outside the view bounds.")
    .padding(4)
    .border(Color.purple, width: 4)
```



## Styling content

- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:))
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:))
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:))
- [backgroundStyle(_:)](/documentation/swiftui/view/backgroundstyle(_:))
- [backgroundStyle](/documentation/swiftui/environmentvalues/backgroundstyle)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [AnyShapeStyle](/documentation/swiftui/anyshapestyle)
- [Gradient](/documentation/swiftui/gradient)
- [MeshGradient](/documentation/swiftui/meshgradient)
- [AnyGradient](/documentation/swiftui/anygradient)
- [ShadowStyle](/documentation/swiftui/shadowstyle)
- [Glass](/documentation/swiftui/glass)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
