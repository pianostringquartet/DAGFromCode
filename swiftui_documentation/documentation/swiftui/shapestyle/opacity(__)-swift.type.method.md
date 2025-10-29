---
title: opacity(_:)
description: Returns a new style based on the current style that multiplies by  when drawing.
source: https://developer.apple.com/documentation/swiftui/shapestyle/opacity(_:)-swift.type.method
timestamp: 2025-10-29T00:29:47.388Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# opacity(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Returns a new style based on the current style that multiplies by  when drawing.

```swift
static func opacity(_ opacity: Double) -> some ShapeStyle
```

## Discussion

In most contexts the current style is the foreground but e.g. when setting the value of the background style, that becomes the current implicit style.

For example, a circle filled with the current foreground style at fifty-percent opacity:

```swift
Circle().fill(.opacity(0.5))
```

## Configuring the default shape style

- [blendMode(_:)](/documentation/swiftui/shapestyle/blendmode(_:)-swift.type.method)
- [shadow(_:)](/documentation/swiftui/shapestyle/shadow(_:)-swift.type.method)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
