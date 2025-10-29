---
title: backgroundStyle(_:)
description: Sets the specified style to render backgrounds within the view.
source: https://developer.apple.com/documentation/swiftui/view/backgroundstyle(_:)
timestamp: 2025-10-29T00:10:25.708Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# backgroundStyle(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the specified style to render backgrounds within the view.

```swift
nonisolated func backgroundStyle<S>(_ style: S) -> some View where S : ShapeStyle
```

## Discussion

The following example uses this modifier to set the [background Style](/documentation/swiftui/environmentvalues/backgroundstyle) environment value to a [blue](/documentation/swiftui/shapestyle/blue) color that includes a subtle [gradient](/documentation/swiftui/color/gradient). SwiftUI fills the [Circle](/documentation/swiftui/circle) shape that acts as a background element with this style:

```swift
Image(systemName: "swift")
    .padding()
    .background(in: Circle())
    .backgroundStyle(.blue.gradient)
```



To restore the default background style, set the [background Style](/documentation/swiftui/environmentvalues/backgroundstyle) environment value to `nil` using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifer:

```swift
.environment(\.backgroundStyle, nil)
```

## Styling content

- [border(_:width:)](/documentation/swiftui/view/border(_:width:))
- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:))
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:))
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:))
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
