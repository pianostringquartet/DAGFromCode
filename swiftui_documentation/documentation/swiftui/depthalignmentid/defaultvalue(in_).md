---
title: defaultValue(in:)
description: Calculates a default value for the corresponding guide in the specified context.
source: https://developer.apple.com/documentation/swiftui/depthalignmentid/defaultvalue(in:)
timestamp: 2025-10-29T00:13:35.606Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [depthalignmentid](/documentation/swiftui/depthalignmentid)

**Type Method**

# defaultValue(in:)

**Available on:** visionOS 1.0+

> Calculates a default value for the corresponding guide in the specified context.

```swift
static func defaultValue(in context: ViewDimensions3D) -> CGFloat
```

## Parameters

**context**

The context of the view that you apply the alignment guide to. The context gives you the view’s dimensions, as well as the values of other alignment guides that apply to the view, including both built-in and custom guides. You can use any of these values, if helpful, to calculate the value for your custom guide.



## Return Value

The offset of the guide from the origin in the view’s coordinate space.

## Discussion

Implement this method when you create a type that conforms to the [Depth Alignment ID](/documentation/swiftui/depthalignmentid) protocol. Use the method to calculate the default offset of the corresponding alignment guide. SwiftUI interprets the value that you return as an offset in the coordinate space of the view that’s being laid out. For example, you can use the context to return a value that’s one-third of the height of the view:

```swift
private struct FirstThirdAlignment: DepthAlignmentID {
    static func defaultValue(in context: ViewDimensions3D) -> CGFloat {
        context.depth / 3
    }
}
```

You can override the default value that this method returns for a particular guide by adding the [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:)) view modifier to a particular view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
