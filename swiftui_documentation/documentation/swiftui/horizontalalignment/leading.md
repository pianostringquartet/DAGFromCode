---
title: leading
description: A guide that marks the leading edge of the view.
source: https://developer.apple.com/documentation/swiftui/horizontalalignment/leading
timestamp: 2025-10-29T00:12:15.995Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [horizontalalignment](/documentation/swiftui/horizontalalignment)

**Type Property**

# leading

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A guide that marks the leading edge of the view.

```swift
static let leading: HorizontalAlignment
```

## Discussion

Use this guide to align the leading edges of views. For a device that uses a left-to-right language, the leading edge is on the left:



The following code generates the image above using a [VStack](/documentation/swiftui/vstack):

```swift
struct HorizontalAlignmentLeading: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Color.red.frame(width: 1)
            Text("Leading").font(.title).border(.gray)
            Color.red.frame(width: 1)
        }
    }
}
```

## Getting guides

- [center](/documentation/swiftui/horizontalalignment/center)
- [trailing](/documentation/swiftui/horizontalalignment/trailing)
- [listRowSeparatorLeading](/documentation/swiftui/horizontalalignment/listrowseparatorleading)
- [listRowSeparatorTrailing](/documentation/swiftui/horizontalalignment/listrowseparatortrailing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
