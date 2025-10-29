---
title: normalized(eoFill:)
description: Returns a new weakly-simple copy of this path.
source: https://developer.apple.com/documentation/swiftui/path/normalized(eofill:)
timestamp: 2025-10-29T00:10:36.389Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# normalized(eoFill:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new weakly-simple copy of this path.

```swift
func normalized(eoFill: Bool = true) -> Path
```

## Parameters

**eoFill**

Whether to use the even-odd rule for determining which areas to treat as the interior of the paths (if true), or the non-zero rule (if false).



## Return Value

A new path.

## Discussion

The returned path is a weakly-simple path, has no self-intersections, and has a normalized orientation. The result of filling this path using either even-odd or non-zero fill rules is identical.

## Performing operations on the path

- [addRoundedRect(in:cornerSize:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornersize:style:transform:))
- [intersection(_:eoFill:)](/documentation/swiftui/path/intersection(_:eofill:))
- [lineIntersection(_:eoFill:)](/documentation/swiftui/path/lineintersection(_:eofill:))
- [lineSubtraction(_:eoFill:)](/documentation/swiftui/path/linesubtraction(_:eofill:))
- [subtracting(_:eoFill:)](/documentation/swiftui/path/subtracting(_:eofill:))
- [symmetricDifference(_:eoFill:)](/documentation/swiftui/path/symmetricdifference(_:eofill:))
- [union(_:eoFill:)](/documentation/swiftui/path/union(_:eofill:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
