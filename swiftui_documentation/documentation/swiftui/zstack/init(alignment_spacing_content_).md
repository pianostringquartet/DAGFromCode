---
title: init(alignment:spacing:content:)
description: Creates an instance with the given spacing and alignment.
source: https://developer.apple.com/documentation/swiftui/zstack/init(alignment:spacing:content:)
timestamp: 2025-10-29T00:09:36.411Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [zstack](/documentation/swiftui/zstack)

**Initializer**

# init(alignment:spacing:content:)

**Available on:** visionOS 2.0+

> Creates an instance with the given spacing and alignment.

```swift
init<V>(alignment: Alignment = .center, spacing: CGFloat?, @ViewBuilder content: () -> V) where Content == ZStackContent3D<V>, V : View
```

## Parameters

**alignment**

The guide for aligning the subviews in this stack on both the x- and y-axes.



**spacing**

The distance between adjacent subviews, or `nil` if you want the stack to choose a default distance for each pair of subviews.



**content**

A view builder that creates the content of this stack.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
