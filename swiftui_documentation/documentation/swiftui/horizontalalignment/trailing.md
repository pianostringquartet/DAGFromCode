---
title: trailing
description: A guide that marks the trailing edge of the view.
source: https://developer.apple.com/documentation/swiftui/horizontalalignment/trailing
timestamp: 2025-10-29T00:13:57.786Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [horizontalalignment](/documentation/swiftui/horizontalalignment)

**Type Property**

# trailing

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A guide that marks the trailing edge of the view.

```swift
static let trailing: HorizontalAlignment
```

## Discussion

Use this guide to align the trailing edges of views. For a device that uses a left-to-right language, the trailing edge is on the right:



The following code generates the image above using a [VStack](/documentation/swiftui/vstack):

```swift
struct HorizontalAlignmentTrailing: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Color.red.frame(width: 1)
            Text("Trailing").font(.title).border(.gray)
            Color.red.frame(width: 1)
        }
    }
}
```

## Getting guides

- [leading](/documentation/swiftui/horizontalalignment/leading)
- [center](/documentation/swiftui/horizontalalignment/center)
- [listRowSeparatorLeading](/documentation/swiftui/horizontalalignment/listrowseparatorleading)
- [listRowSeparatorTrailing](/documentation/swiftui/horizontalalignment/listrowseparatortrailing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
