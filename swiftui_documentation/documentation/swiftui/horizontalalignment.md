---
title: HorizontalAlignment
description: An alignment position along the horizontal axis.
source: https://developer.apple.com/documentation/swiftui/horizontalalignment
timestamp: 2025-10-29T00:12:56.963Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# HorizontalAlignment

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An alignment position along the horizontal axis.

```swift
@frozen struct HorizontalAlignment
```

## Overview

Use horizontal alignment guides to tell SwiftUI how to position views relative to one another horizontally, like when you place views vertically in an [VStack](/documentation/swiftui/vstack). The following example demonstrates common built-in horizontal alignments:



You can generate the example above by creating a series of columns implemented as vertical stacks, where you configure each stack with a different alignment guide:

```swift
private struct HorizontalAlignmentGallery: View {
    var body: some View {
        HStack(spacing: 30) {
            column(alignment: .leading, text: "Leading")
            column(alignment: .center, text: "Center")
            column(alignment: .trailing, text: "Trailing")
        }
        .frame(height: 150)
    }

    private func column(alignment: HorizontalAlignment, text: String) -> some View {
        VStack(alignment: alignment, spacing: 0) {
            Color.red.frame(width: 1)
            Text(text).font(.title).border(.gray)
            Color.red.frame(width: 1)
        }
    }
}
```

During layout, SwiftUI aligns the views inside each stack by bringing together the specified guides of the affected views. SwiftUI calculates the position of a guide for a particular view based on the characteristics of the view. For example, the [center](/documentation/swiftui/horizontalalignment/center) guide appears at half the width of the view. You can override the guide calculation for a particular view using the [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:)) view modifier.

### Layout direction

When a user configures their device to use a left-to-right language like English, the system places the leading alignment on the left and the trailing alignment on the right, as the example from the previous section demonstrates. However, in a right-to-left language, the system reverses these. You can see this by using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier to explicitly override the [layout Direction](/documentation/swiftui/environmentvalues/layoutdirection) environment value for the view defined above:

```swift
HorizontalAlignmentGallery()
    .environment(\.layoutDirection, .rightToLeft)
```



This automatic layout adjustment makes it easier to localize your app, but it’s still important to test your app for the different locales that you ship into. For more information about the localization process, see [localization](/documentation/Xcode/localization).

### Custom alignment guides

You can create a custom horizontal alignment by creating a type that conforms to the [Alignment ID](/documentation/swiftui/alignmentid) protocol, and then using that type to initialize a new static property on `HorizontalAlignment`:

```swift
private struct OneQuarterAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context.width / 4
    }
}

extension HorizontalAlignment {
    static let oneQuarter = HorizontalAlignment(OneQuarterAlignment.self)
}
```

You implement the [defaultValue(in:)](/documentation/swiftui/alignmentid/defaultvalue(in:)) method to calculate a default value for the custom alignment guide. The method receives a [View Dimensions](/documentation/swiftui/viewdimensions) instance that you can use to calculate an appropriate value based on characteristics of the view. The example above places the guide at one quarter of the width of the view, as measured from the view’s origin.

You can then use the custom alignment guide like any built-in guide. For example, you can use it as the `alignment` parameter to a [VStack](/documentation/swiftui/vstack), or you can change it for a specific view using the [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:)) view modifier. Custom alignment guides also automatically reverse in a right-to-left environment, just like built-in guides.

### Composite alignment

Combine a [Vertical Alignment](/documentation/swiftui/verticalalignment) with a `HorizontalAlignment` to create a composite [Alignment](/documentation/swiftui/alignment) that indicates both vertical and horizontal positioning in one value. For example, you could combine your custom `oneQuarter` horizontal alignment from the previous section with a built-in [center](/documentation/swiftui/verticalalignment/center) vertical alignment to use in a [ZStack](/documentation/swiftui/zstack):

```swift
struct LayeredVerticalStripes: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .oneQuarter, vertical: .center)) {
            verticalStripes(color: .blue)
                .frame(width: 300, height: 150)
            verticalStripes(color: .green)
                .frame(width: 180, height: 80)
        }
    }

    private func verticalStripes(color: Color) -> some View {
        HStack(spacing: 1) {
            ForEach(0..<4) { _ in color }
        }
    }
}
```

The example above uses widths and heights that generate two mismatched sets of four vertical stripes. The [ZStack](/documentation/swiftui/zstack) centers the two sets vertically and aligns them horizontally one quarter of the way from the leading edge of each set. In a left-to-right locale, this aligns the right edges of the left-most stripes of each set:



## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting guides

- [leading](/documentation/swiftui/horizontalalignment/leading) A guide that marks the leading edge of the view.
- [center](/documentation/swiftui/horizontalalignment/center) A guide that marks the horizontal center of the view.
- [trailing](/documentation/swiftui/horizontalalignment/trailing) A guide that marks the trailing edge of the view.
- [listRowSeparatorLeading](/documentation/swiftui/horizontalalignment/listrowseparatorleading) A guide marking the leading edge of a  row separator.
- [listRowSeparatorTrailing](/documentation/swiftui/horizontalalignment/listrowseparatortrailing) A guide marking the trailing edge of a  row separator.

## Creating a custom alignment

- [init(_:)](/documentation/swiftui/horizontalalignment/init(_:)) Creates a custom horizontal alignment of the specified type.
- [combineExplicit(_:)](/documentation/swiftui/horizontalalignment/combineexplicit(_:)) Merges a sequence of explicit alignment values produced by this instance.

## Aligning views

- [Aligning views within a stack](/documentation/swiftui/aligning-views-within-a-stack)
- [Aligning views across stacks](/documentation/swiftui/aligning-views-across-stacks)
- [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:))
- [Alignment](/documentation/swiftui/alignment)
- [VerticalAlignment](/documentation/swiftui/verticalalignment)
- [DepthAlignment](/documentation/swiftui/depthalignment)
- [AlignmentID](/documentation/swiftui/alignmentid)
- [ViewDimensions](/documentation/swiftui/viewdimensions)
- [ViewDimensions3D](/documentation/swiftui/viewdimensions3d)
- [SpatialContainer](/documentation/swiftui/spatialcontainer)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
