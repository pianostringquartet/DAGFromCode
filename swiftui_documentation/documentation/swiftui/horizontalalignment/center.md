---
title: center
description: A guide that marks the horizontal center of the view.
source: https://developer.apple.com/documentation/swiftui/horizontalalignment/center
timestamp: 2025-10-29T00:12:47.208Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [horizontalalignment](/documentation/swiftui/horizontalalignment)

**Type Property**

# center

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A guide that marks the horizontal center of the view.

```swift
static let center: HorizontalAlignment
```

## Discussion

Use this guide to align the centers of views:



The following code generates the image above using a [VStack](/documentation/swiftui/vstack):

```swift
struct HorizontalAlignmentCenter: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Color.red.frame(width: 1)
            Text("Center").font(.title).border(.gray)
            Color.red.frame(width: 1)
        }
    }
}
```

## Getting guides

- [leading](/documentation/swiftui/horizontalalignment/leading)
- [trailing](/documentation/swiftui/horizontalalignment/trailing)
- [listRowSeparatorLeading](/documentation/swiftui/horizontalalignment/listrowseparatorleading)
- [listRowSeparatorTrailing](/documentation/swiftui/horizontalalignment/listrowseparatortrailing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
