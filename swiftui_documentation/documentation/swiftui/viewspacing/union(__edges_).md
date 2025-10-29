---
title: union(_:edges:)
description: Gets a new value that merges the spacing preferences of another spacing instance with this instance for a specified set of edges.
source: https://developer.apple.com/documentation/swiftui/viewspacing/union(_:edges:)
timestamp: 2025-10-29T00:12:34.506Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewspacing](/documentation/swiftui/viewspacing)

**Instance Method**

# union(_:edges:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Gets a new value that merges the spacing preferences of another spacing instance with this instance for a specified set of edges.

```swift
func union(_ other: ViewSpacing, edges: Edge.Set = .all) -> ViewSpacing
```

## Parameters

**other**

Another spacing preferences instance to merge with this one.



**edges**

The edges to merge. Edges that you don’t specify are unchanged after the method completes.



## Return Value

A new view spacing preferences instance with the merged values.

## Discussion

This method behaves like [formUnion(_:edges:)](/documentation/swiftui/viewspacing/formunion(_:edges:)), except that it creates a copy of the original spacing preferences instance before merging, leaving the original instance unmodified.

## Merging spacing instances

- [formUnion(_:edges:)](/documentation/swiftui/viewspacing/formunion(_:edges:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
