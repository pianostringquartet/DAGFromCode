---
title: bottom
description: A guide that marks the bottom edge of the view.
source: https://developer.apple.com/documentation/swiftui/verticalalignment/bottom
timestamp: 2025-10-29T00:11:23.689Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [verticalalignment](/documentation/swiftui/verticalalignment)

**Type Property**

# bottom

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A guide that marks the bottom edge of the view.

```swift
static let bottom: VerticalAlignment
```

## Discussion

Use this guide to align the bottom edges of views:



The following code generates the image above using an [HStack](/documentation/swiftui/hstack):

```swift
struct VerticalAlignmentBottom: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            Color.red.frame(height: 1)
            Text("Bottom").font(.title).border(.gray)
            Color.red.frame(height: 1)
        }
    }
}
```

## Getting guides

- [top](/documentation/swiftui/verticalalignment/top)
- [center](/documentation/swiftui/verticalalignment/center)
- [firstTextBaseline](/documentation/swiftui/verticalalignment/firsttextbaseline)
- [lastTextBaseline](/documentation/swiftui/verticalalignment/lasttextbaseline)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
