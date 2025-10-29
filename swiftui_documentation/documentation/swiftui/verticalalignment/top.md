---
title: top
description: A guide that marks the top edge of the view.
source: https://developer.apple.com/documentation/swiftui/verticalalignment/top
timestamp: 2025-10-29T00:13:20.293Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [verticalalignment](/documentation/swiftui/verticalalignment)

**Type Property**

# top

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A guide that marks the top edge of the view.

```swift
static let top: VerticalAlignment
```

## Discussion

Use this guide to align the top edges of views:



The following code generates the image above using an [HStack](/documentation/swiftui/hstack):

```swift
struct VerticalAlignmentTop: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Color.red.frame(height: 1)
            Text("Top").font(.title).border(.gray)
            Color.red.frame(height: 1)
        }
    }
}
```

## Getting guides

- [center](/documentation/swiftui/verticalalignment/center)
- [bottom](/documentation/swiftui/verticalalignment/bottom)
- [firstTextBaseline](/documentation/swiftui/verticalalignment/firsttextbaseline)
- [lastTextBaseline](/documentation/swiftui/verticalalignment/lasttextbaseline)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
