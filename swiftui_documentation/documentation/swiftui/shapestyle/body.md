---
title: body
description: A rectangular view that’s filled with the shape style.
source: https://developer.apple.com/documentation/swiftui/shapestyle/body
timestamp: 2025-10-29T00:14:32.299Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Instance Property**

# body

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A rectangular view that’s filled with the shape style.

```swift
var body: _ShapeView<Rectangle, Self> { get }
```

## Discussion

For a [Shape Style](/documentation/swiftui/shapestyle) that also conforms to the [View](/documentation/swiftui/view) protocol, like [Color](/documentation/swiftui/color) or [Linear Gradient](/documentation/swiftui/lineargradient), this default implementation of the [body](/documentation/swiftui/view/body-8kl5o) property provides a visual representation for the shape style. As a result, you can use the shape style in a view hierarchy like any other view:

```swift
ZStack {
    Color.cyan
    Text("Hello!")
}
.frame(width: 200, height: 50)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
