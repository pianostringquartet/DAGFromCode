---
title: shadow(_:)
description: Returns a shape style that applies the specified shadow style to the current style.
source: https://developer.apple.com/documentation/swiftui/shapestyle/shadow(_:)-swift.type.method
timestamp: 2025-10-29T00:29:46.831Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# shadow(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Returns a shape style that applies the specified shadow style to the current style.

```swift
static func shadow(_ style: ShadowStyle) -> some ShapeStyle
```

## Parameters

**style**

The shadow style to apply.



## Return Value

A new shape style based on the current style that uses the specified shadow style.

## Discussion

In most contexts the current style is the foreground, but not always. For example, when setting the value of the background style, that becomes the current implicit style.

The following example creates a circle filled with the current foreground style that uses an inner shadow:

```swift
Circle().fill(.shadow(.inner(radius: 1, y: 1)))
```

## Configuring the default shape style

- [blendMode(_:)](/documentation/swiftui/shapestyle/blendmode(_:)-swift.type.method)
- [opacity(_:)](/documentation/swiftui/shapestyle/opacity(_:)-swift.type.method)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
