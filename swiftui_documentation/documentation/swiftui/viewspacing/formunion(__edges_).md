---
title: formUnion(_:edges:)
description: Merges the spacing preferences of another spacing instance with this instance for a specified set of edges.
source: https://developer.apple.com/documentation/swiftui/viewspacing/formunion(_:edges:)
timestamp: 2025-10-29T00:11:46.958Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewspacing](/documentation/swiftui/viewspacing)

**Instance Method**

# formUnion(_:edges:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Merges the spacing preferences of another spacing instance with this instance for a specified set of edges.

```swift
mutating func formUnion(_ other: ViewSpacing, edges: Edge.Set = .all)
```

## Parameters

**other**

Another spacing preferences instances to merge with this one.



**edges**

The edges to merge. Edges that you don’t specify are unchanged after the method completes.



## Discussion

When you merge another spacing preference instance with this one, this instance ends up with the greater of its original value or the other instance’s value for each of the specified edges. You can call the method repeatedly with each value in a collection to merge a collection of preferences. The result has the smallest preferences on each edge that meets the largest requirements of all the inputs for that edge.

If you want to merge preferences without modifying the original instance, use [union(_:edges:)](/documentation/swiftui/viewspacing/union(_:edges:)) instead.

## Merging spacing instances

- [union(_:edges:)](/documentation/swiftui/viewspacing/union(_:edges:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
