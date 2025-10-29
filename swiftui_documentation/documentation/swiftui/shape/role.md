---
title: role
description: An indication of how to style a shape.
source: https://developer.apple.com/documentation/swiftui/shape/role
timestamp: 2025-10-29T00:10:08.317Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Type Property**

# role

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An indication of how to style a shape.

```swift
nonisolated static var role: ShapeRole { get }
```

## Discussion

SwiftUI looks at a shape’s role when deciding how to apply a [Shape Style](/documentation/swiftui/shapestyle) at render time. The [Shape](/documentation/swiftui/shape) protocol provides a default implementation with a value of [fill](/documentation/swiftui/shaperole/fill). If you create a composite shape, you can provide an override of this property to return another value, if appropriate.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
