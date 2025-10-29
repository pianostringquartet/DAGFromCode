---
title: lastTextBaseline
description: A guide that marks the bottom-most text baseline in a view.
source: https://developer.apple.com/documentation/swiftui/verticalalignment/lasttextbaseline
timestamp: 2025-10-29T00:09:54.680Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [verticalalignment](/documentation/swiftui/verticalalignment)

**Type Property**

# lastTextBaseline

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A guide that marks the bottom-most text baseline in a view.

```swift
static let lastTextBaseline: VerticalAlignment
```

## Discussion

Use this guide to align with the baseline of the bottom-most text in a view. The guide aligns with the bottom of a view that contains no text.



The following code generates the image above using an [HStack](/documentation/swiftui/hstack):

```swift
struct VerticalAlignmentLastTextBaseline: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 0) {
            Color.red.frame(height: 1)
            Text("Last Text Baseline").font(.title).border(.gray)
            Color.red.frame(height: 1)
        }
    }
}
```

## Getting guides

- [top](/documentation/swiftui/verticalalignment/top)
- [center](/documentation/swiftui/verticalalignment/center)
- [bottom](/documentation/swiftui/verticalalignment/bottom)
- [firstTextBaseline](/documentation/swiftui/verticalalignment/firsttextbaseline)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
