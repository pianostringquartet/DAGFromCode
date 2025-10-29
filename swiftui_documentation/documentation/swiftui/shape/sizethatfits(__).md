---
title: sizeThatFits(_:)
description: Returns the size of the view that will render the shape, given a proposed size.
source: https://developer.apple.com/documentation/swiftui/shape/sizethatfits(_:)
timestamp: 2025-10-29T00:09:13.690Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# sizeThatFits(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Returns the size of the view that will render the shape, given a proposed size.

```swift
nonisolated func sizeThatFits(_ proposal: ProposedViewSize) -> CGSize
```

## Parameters

**proposal**

A size proposal for the container.



## Return Value

A size that indicates how much space the shape needs.

## Discussion

Implement this method to tell the container of the shape how much space the shape needs to render itself, given a size proposal.

See [sizeThatFits(proposal:subviews:cache:)](/documentation/swiftui/layout/sizethatfits(proposal:subviews:cache:)) for more details about how the layout system chooses the size of views.

## Defining a shape’s size and path

- [path(in:)](/documentation/swiftui/shape/path(in:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
