---
title: combineExplicit(_:)
description: Merges a sequence of explicit alignment values produced by this instance.
source: https://developer.apple.com/documentation/swiftui/horizontalalignment/combineexplicit(_:)
timestamp: 2025-10-29T00:11:31.338Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [horizontalalignment](/documentation/swiftui/horizontalalignment)

**Instance Method**

# combineExplicit(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Merges a sequence of explicit alignment values produced by this instance.

```swift
func combineExplicit<S>(_ values: S) -> CGFloat? where S : Sequence, S.Element == CGFloat?
```

## Discussion

For built-in horizontal alignment types, this method returns the mean of all non-`nil` values.

## Creating a custom alignment

- [init(_:)](/documentation/swiftui/horizontalalignment/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
