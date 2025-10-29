---
title: AlignmentID
description: A type that you use to create custom alignment guides.
source: https://developer.apple.com/documentation/swiftui/alignmentid
timestamp: 2025-10-29T00:11:37.248Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# AlignmentID

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that you use to create custom alignment guides.

```swift
protocol AlignmentID
```

## Overview

Every built-in alignment guide that [Vertical Alignment](/documentation/swiftui/verticalalignment) or [Horizontal Alignment](/documentation/swiftui/horizontalalignment) defines as a static property, like [top](/documentation/swiftui/verticalalignment/top) or [leading](/documentation/swiftui/horizontalalignment/leading), has a unique alignment identifier type that produces the default offset for that guide. To create a custom alignment guide, define your own alignment identifier as a type that conforms to the `AlignmentID` protocol, and implement the required [defaultValue(in:)](/documentation/swiftui/alignmentid/defaultvalue(in:)) method:

```swift
private struct FirstThirdAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context.height / 3
    }
}
```

When implementing the method, calculate the guide’s default offset from the view’s origin. If it’s helpful, you can use information from the [View Dimensions](/documentation/swiftui/viewdimensions) input in the calculation. This parameter provides context about the specific view that’s using the guide. The above example creates an identifier called `FirstThirdAlignment` and calculates a default value that’s one-third of the height of the aligned view.

Use the identifier’s type to create a static property in an extension of one of the alignment guide types, like [Vertical Alignment](/documentation/swiftui/verticalalignment):

```swift
extension VerticalAlignment {
    static let firstThird = VerticalAlignment(FirstThirdAlignment.self)
}
```

You can apply your custom guide like any of the built-in guides. For example, you can use an [HStack](/documentation/swiftui/hstack) to align its views at one-third of their height using the guide defined above:

```swift
struct StripesGroup: View {
    var body: some View {
        HStack(alignment: .firstThird, spacing: 1) {
            HorizontalStripes().frame(height: 60)
            HorizontalStripes().frame(height: 120)
            HorizontalStripes().frame(height: 90)
        }
    }
}

struct HorizontalStripes: View {
    var body: some View {
        VStack(spacing: 1) {
            ForEach(0..<3) { _ in Color.blue }
        }
    }
}
```

Because each set of stripes has three equal, vertically stacked rectangles, they align at the bottom edge of the top rectangle. This corresponds in each case to a third of the overall height, as measured from the origin at the top of each set of stripes:



You can also use the [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:)) view modifier to alter the behavior of your custom guide for a view, as you might alter a built-in guide. For example, you can change one of the stacks of stripes from the previous example to align its `firstThird` guide at two thirds of the height instead:

```swift
struct StripesGroupModified: View {
    var body: some View {
        HStack(alignment: .firstThird, spacing: 1) {
            HorizontalStripes().frame(height: 60)
            HorizontalStripes().frame(height: 120)
            HorizontalStripes().frame(height: 90)
                .alignmentGuide(.firstThird) { context in
                    2 * context.height / 3
                }
        }
    }
}
```

The modified guide calculation causes the affected view to place the bottom edge of its middle rectangle on the `firstThird` guide, which aligns with the bottom edge of the top rectangle in the other two groups:



## Getting the default value

- [defaultValue(in:)](/documentation/swiftui/alignmentid/defaultvalue(in:)) Calculates a default value for the corresponding guide in the specified context.

## Aligning views

- [Aligning views within a stack](/documentation/swiftui/aligning-views-within-a-stack)
- [Aligning views across stacks](/documentation/swiftui/aligning-views-across-stacks)
- [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:))
- [Alignment](/documentation/swiftui/alignment)
- [HorizontalAlignment](/documentation/swiftui/horizontalalignment)
- [VerticalAlignment](/documentation/swiftui/verticalalignment)
- [DepthAlignment](/documentation/swiftui/depthalignment)
- [ViewDimensions](/documentation/swiftui/viewdimensions)
- [ViewDimensions3D](/documentation/swiftui/viewdimensions3d)
- [SpatialContainer](/documentation/swiftui/spatialcontainer)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
