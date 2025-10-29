---
title: Alignment
description: An alignment in both axes.
source: https://developer.apple.com/documentation/swiftui/alignment
timestamp: 2025-10-29T00:14:19.980Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Alignment

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An alignment in both axes.

```swift
@frozen struct Alignment
```

## Overview

An `Alignment` contains a [Horizontal Alignment](/documentation/swiftui/horizontalalignment) guide and a [Vertical Alignment](/documentation/swiftui/verticalalignment) guide. Specify an alignment to direct the behavior of certain layout containers and modifiers, like when you place views in a [ZStack](/documentation/swiftui/zstack), or layer a view in front of or behind another view using [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) or [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)), respectively. During layout, SwiftUI brings the specified guides of the affected views together, aligning the views.

SwiftUI provides a set of built-in alignments that represent common combinations of the built-in horizontal and vertical alignment guides. The blue boxes in the following diagram demonstrate the alignment named by each box’s label, relative to the background view:



The following code generates the diagram above, where each blue box appears in an overlay that’s configured with a different alignment:

```swift
struct AlignmentGallery: View {
    var body: some View {
        BackgroundView()
            .overlay(alignment: .topLeading) { box(".topLeading") }
            .overlay(alignment: .top) { box(".top") }
            .overlay(alignment: .topTrailing) { box(".topTrailing") }
            .overlay(alignment: .leading) { box(".leading") }
            .overlay(alignment: .center) { box(".center") }
            .overlay(alignment: .trailing) { box(".trailing") }
            .overlay(alignment: .bottomLeading) { box(".bottomLeading") }
            .overlay(alignment: .bottom) { box(".bottom") }
            .overlay(alignment: .bottomTrailing) { box(".bottomTrailing") }
            .overlay(alignment: .leadingLastTextBaseline) { box(".leadingLastTextBaseline") }
            .overlay(alignment: .trailingFirstTextBaseline) { box(".trailingFirstTextBaseline") }
    }

    private func box(_ name: String) -> some View {
        Text(name)
            .font(.system(.caption, design: .monospaced))
            .padding(2)
            .foregroundColor(.white)
            .background(.blue.opacity(0.8), in: Rectangle())
    }
}

private struct BackgroundView: View {
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            GridRow {
                Text("Some text in an upper quadrant")
                Color.gray.opacity(0.3)
            }
            GridRow {
                Color.gray.opacity(0.3)
                Text("More text in a lower quadrant")
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .foregroundColor(.secondary)
        .border(.gray)
    }
}
```

To avoid crowding, the alignment diagram shows only two of the available text baseline alignments. The others align as their names imply. Notice that the first text baseline alignment aligns with the top-most line of text in the background view, while the last text baseline aligns with the bottom-most line. For more information about text baseline alignment, see [Vertical Alignment](/documentation/swiftui/verticalalignment).

In a left-to-right language like English, the leading and trailing alignments appear on the left and right edges, respectively. SwiftUI reverses these in right-to-left language environments. For more information, see [Horizontal Alignment](/documentation/swiftui/horizontalalignment).

### Custom alignment

You can create custom alignments — which you typically do to make use of custom horizontal or vertical guides — by using the [init(horizontal:vertical:)](/documentation/swiftui/alignment/init(horizontal:vertical:)) initializer. For example, you can combine a custom vertical guide called `firstThird` with the built-in horizontal [center](/documentation/swiftui/horizontalalignment/center) guide, and use it to configure a [ZStack](/documentation/swiftui/zstack):

```swift
ZStack(alignment: Alignment(horizontal: .center, vertical: .firstThird)) {
    // ...
}
```

For more information about creating custom guides, including the code that creates the custom `firstThird` alignment in the example above, see [Alignment ID](/documentation/swiftui/alignmentid).

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting top guides

- [topLeading](/documentation/swiftui/alignment/topleading) A guide that marks the top and leading edges of the view.
- [top](/documentation/swiftui/alignment/top) A guide that marks the top edge of the view.
- [topTrailing](/documentation/swiftui/alignment/toptrailing) A guide that marks the top and trailing edges of the view.

## Getting middle guides

- [leading](/documentation/swiftui/alignment/leading) A guide that marks the leading edge of the view.
- [center](/documentation/swiftui/alignment/center) A guide that marks the center of the view.
- [trailing](/documentation/swiftui/alignment/trailing) A guide that marks the trailing edge of the view.

## Getting bottom guides

- [bottomLeading](/documentation/swiftui/alignment/bottomleading) A guide that marks the bottom and leading edges of the view.
- [bottom](/documentation/swiftui/alignment/bottom) A guide that marks the bottom edge of the view.
- [bottomTrailing](/documentation/swiftui/alignment/bottomtrailing) A guide that marks the bottom and trailing edges of the view.

## Getting text baseline guides

- [leadingFirstTextBaseline](/documentation/swiftui/alignment/leadingfirsttextbaseline) A guide that marks the leading edge and top-most text baseline in a view.
- [centerFirstTextBaseline](/documentation/swiftui/alignment/centerfirsttextbaseline) A guide that marks the top-most text baseline in a view.
- [trailingFirstTextBaseline](/documentation/swiftui/alignment/trailingfirsttextbaseline) A guide that marks the trailing edge and top-most text baseline in a view.
- [leadingLastTextBaseline](/documentation/swiftui/alignment/leadinglasttextbaseline) A guide that marks the leading edge and bottom-most text baseline in a view.
- [centerLastTextBaseline](/documentation/swiftui/alignment/centerlasttextbaseline) A guide that marks the bottom-most text baseline in a view.
- [trailingLastTextBaseline](/documentation/swiftui/alignment/trailinglasttextbaseline) A guide that marks the trailing edge and bottom-most text baseline in a view.

## Creating a custom alignment

- [init(horizontal:vertical:)](/documentation/swiftui/alignment/init(horizontal:vertical:)) Creates a custom alignment value with the specified horizontal and vertical alignment guides.
- [horizontal](/documentation/swiftui/alignment/horizontal) The alignment on the horizontal axis.
- [vertical](/documentation/swiftui/alignment/vertical) The alignment on the vertical axis.

## Aligning views

- [Aligning views within a stack](/documentation/swiftui/aligning-views-within-a-stack)
- [Aligning views across stacks](/documentation/swiftui/aligning-views-across-stacks)
- [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:))
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
