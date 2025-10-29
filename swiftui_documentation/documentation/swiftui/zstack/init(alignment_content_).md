---
title: init(alignment:content:)
description: Creates an instance with the given alignment.
source: https://developer.apple.com/documentation/swiftui/zstack/init(alignment:content:)
timestamp: 2025-10-29T00:12:15.615Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [zstack](/documentation/swiftui/zstack)

**Initializer**

# init(alignment:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an instance with the given alignment.

```swift
init(alignment: Alignment = .center, @ViewBuilder content: () -> Content)
```

## Parameters

**alignment**

The guide for aligning the subviews in this stack on both the x- and y-axes.



**content**

A view builder that creates the content of this stack.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
