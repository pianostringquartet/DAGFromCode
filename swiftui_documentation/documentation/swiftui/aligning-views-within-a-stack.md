---
title: Aligning views within a stack
description: Position views inside a stack using alignment guides.
source: https://developer.apple.com/documentation/swiftui/aligning-views-within-a-stack
timestamp: 2025-10-29T00:10:16.434Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Aligning views within a stack

> Position views inside a stack using alignment guides.

## Overview

Stacks place their child views to match their alignment, which defaults to center alignment. When you initialize the stack, you can specify an alignment for the stack to use that also applies to a stack’s child views. If you want to modify the placement of individual child views, use the alignment guide modifier to make adjustments that offset the view from the alignment the stack provides.

To align views across multiple stacks, see [Aligning-Views-Across](/documentation/swiftui/aligning-views-across-stacks).

### Use defaults for basic alignment

For an example of how SwiftUI applies default alignment to the views in an [HStack](/documentation/swiftui/hstack), examine the following code used to provide a status view for a recording app. The `HStack` contains an image view for the icon and two text views with labels that use the [font(_:)](/documentation/swiftui/view/font(_:)) modifier to adjust the font size of the text.

```swift
HStack {
    Image("microphone")
    Text("Connecting")
        .font(.caption)
    Text("Bryan")
        .font(.title)
}
.padding()
.border(Color.blue, width: 1)
```

The orange reference line in the following figure shows the default alignment position of the views within the stack. The line functions as a visual reference for the purposes of this article.



### Customize stack alignment

You can align content within a stack based on guides provided by the alignments that the stack supports. The various kinds of stacks support the following alignments:

- [HStack](/documentation/swiftui/hstack) uses the guides defined in [Vertical Alignment](/documentation/swiftui/verticalalignment).
- [VStack](/documentation/swiftui/vstack) uses the guides defined in [Horizontal Alignment](/documentation/swiftui/horizontalalignment).
- [ZStack](/documentation/swiftui/zstack) uses the guides defined in [Alignment](/documentation/swiftui/alignment), and a combination of `HorizontalAlignment` and `VerticalAlignment`.

Use the `alignment` parameter when initializing a stack to define the alignment guide for the stack. The following example sets the alignment of the `HStack` to [first Text Baseline](/documentation/swiftui/verticalalignment/firsttextbaseline), which aligns its child views to the baseline of the first text view (which contains the string “Connecting”):

```swift
HStack(alignment: .firstTextBaseline) {
    Image("microphone")
    Text("Connecting")
        .font(.caption)
    Text("Bryan")
        .font(.title)
}
.padding()
.border(Color.blue, width: 1)
```



### Adjust the alignment of individual views within a stack

Custom images don’t provide a text baseline guide, so the bottom of the image aligns to the text view’s baseline. Adjust the alignment of the image using [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:)) to get the visual alignment you desire. The alignment guide’s closure provides an instance of [View Dimensions](/documentation/swiftui/viewdimensions), the parameter `context` in this example — which you can use to return an offset value. The value looked up from `context` with [bottom](/documentation/swiftui/verticalalignment/bottom), provides an offset that aligns the bottom of the image adjusted by an offset to the baseline guide defined on the stack:

```swift
HStack(alignment: .firstTextBaseline) {
    Image("microphone")
        .alignmentGuide(.firstTextBaseline) { context in
            context[.bottom] - 0.12 * context.height
        }
    Text("Connecting")
        .font(.caption)
    Text("Bryan")
        .font(.title)
}
.padding()
.border(Color.blue, width: 1)
```

When you use an alignment guide modifier, make sure to specify an active alignment of the stack. Otherwise, SwiftUI doesn’t invoke the closure to offset the view. In the example above, the [first Text Baseline](/documentation/swiftui/verticalalignment/firsttextbaseline) input to the alignment guide matches the stack’s alignment, so the adjustment affects the placement of the image:



### Use SF Symbols to simplify views when aligning with text

You can replace the microphone image with a similar icon from [sf](/design/Human-Interface-Guidelines/sf-symbols) to simplify the view. The icons from SF Symbols use text baseline guides, which means they support whatever font styling you apply to the view.

```swift
HStack(alignment: .firstTextBaseline) {
    Image(systemName: "mic.circle")
        .font(.title)
    Text("Connecting")
        .font(.caption)
    Text("Bryan")
        .font(.title)
}
.padding()
.border(Color.blue, width: 1)
```



## Aligning views

- [Aligning views across stacks](/documentation/swiftui/aligning-views-across-stacks)
- [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:))
- [Alignment](/documentation/swiftui/alignment)
- [HorizontalAlignment](/documentation/swiftui/horizontalalignment)
- [VerticalAlignment](/documentation/swiftui/verticalalignment)
- [DepthAlignment](/documentation/swiftui/depthalignment)
- [AlignmentID](/documentation/swiftui/alignmentid)
- [ViewDimensions](/documentation/swiftui/viewdimensions)
- [ViewDimensions3D](/documentation/swiftui/viewdimensions3d)
- [SpatialContainer](/documentation/swiftui/spatialcontainer)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
