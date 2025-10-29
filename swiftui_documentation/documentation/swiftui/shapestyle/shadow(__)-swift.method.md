---
title: shadow(_:)
description: Applies the specified shadow effect to the shape style.
source: https://developer.apple.com/documentation/swiftui/shapestyle/shadow(_:)-swift.method
timestamp: 2025-10-29T00:29:46.340Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Instance Method**

# shadow(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Applies the specified shadow effect to the shape style.

```swift
func shadow(_ style: ShadowStyle) -> some ShapeStyle
```

## Parameters

**style**

The shadow style to apply.



## Return Value

A new shape style that uses the specified shadow style.

## Discussion

For example, you can create a rectangle that adds a drop shadow to the [red](/documentation/swiftui/shapestyle/red) shape style.

```swift
Rectangle().fill(.red.shadow(.drop(radius: 2, y: 3)))
```

## Modifying a shape style

- [blendMode(_:)](/documentation/swiftui/shapestyle/blendmode(_:)-swift.method)
- [opacity(_:)](/documentation/swiftui/shapestyle/opacity(_:)-swift.method)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
