---
title: buttonBorder
description: A shape that defers to the environment to determine the resolved button border shape.
source: https://developer.apple.com/documentation/swiftui/shape/buttonborder
timestamp: 2025-10-29T00:12:55.188Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Type Property**

# buttonBorder

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A shape that defers to the environment to determine the resolved button border shape.

```swift
static var buttonBorder: ButtonBorderShape { get }
```

## Discussion

You can override the resolved shape in a given view hierarchy by using the [buttonBorderShape(_:)](/documentation/swiftui/view/buttonbordershape(_:)) modifier. If no button border shape is specified, it is resolved automatically for the given context and platform.

## Getting standard shapes

- [capsule](/documentation/swiftui/shape/capsule)
- [capsule(style:)](/documentation/swiftui/shape/capsule(style:))
- [circle](/documentation/swiftui/shape/circle)
- [containerRelative](/documentation/swiftui/shape/containerrelative)
- [ellipse](/documentation/swiftui/shape/ellipse)
- [rect](/documentation/swiftui/shape/rect)
- [rect(cornerRadii:style:)](/documentation/swiftui/shape/rect(cornerradii:style:))
- [rect(cornerRadius:style:)](/documentation/swiftui/shape/rect(cornerradius:style:))
- [rect(cornerSize:style:)](/documentation/swiftui/shape/rect(cornersize:style:))
- [rect(topLeadingRadius:bottomLeadingRadius:bottomTrailingRadius:topTrailingRadius:style:)](/documentation/swiftui/shape/rect(topleadingradius:bottomleadingradius:bottomtrailingradius:toptrailingradius:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
