---
title: combineExplicit(_:)
description: Merges a sequence of explicit alignment values produced by this instance.
source: https://developer.apple.com/documentation/swiftui/verticalalignment/combineexplicit(_:)
timestamp: 2025-10-29T00:10:13.614Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [verticalalignment](/documentation/swiftui/verticalalignment)

**Instance Method**

# combineExplicit(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Merges a sequence of explicit alignment values produced by this instance.

```swift
func combineExplicit<S>(_ values: S) -> CGFloat? where S : Sequence, S.Element == CGFloat?
```

## Discussion

For most alignment types, this method returns the mean of all non-`nil` values. However, some types use other rules. For example, [first Text Baseline](/documentation/swiftui/verticalalignment/firsttextbaseline) returns the minimum value, while [last Text Baseline](/documentation/swiftui/verticalalignment/lasttextbaseline) returns the maximum value.

## Creating a custom alignment

- [init(_:)](/documentation/swiftui/verticalalignment/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
