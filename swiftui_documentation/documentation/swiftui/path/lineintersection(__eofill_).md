---
title: lineIntersection(_:eoFill:)
description: Returns a new path with a line from this path that overlaps the filled regions of the given path.
source: https://developer.apple.com/documentation/swiftui/path/lineintersection(_:eofill:)
timestamp: 2025-10-29T00:11:34.395Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# lineIntersection(_:eoFill:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new path with a line from this path that overlaps the filled regions of the given path.

```swift
func lineIntersection(_ other: Path, eoFill: Bool = false) -> Path
```

## Parameters

**other**

The path to intersect.



**eoFill**

Whether to use the even-odd rule for determining which areas to treat as the interior of the paths (if true), or the non-zero rule (if false).



## Return Value

A new path.

## Discussion

The line of the resulting path is the line of this path that overlaps the filled region of `other`.

Intersected subpaths that are clipped create open subpaths. Closed subpaths that do not intersect `other` remain closed.

## Performing operations on the path

- [addRoundedRect(in:cornerSize:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornersize:style:transform:))
- [intersection(_:eoFill:)](/documentation/swiftui/path/intersection(_:eofill:))
- [lineSubtraction(_:eoFill:)](/documentation/swiftui/path/linesubtraction(_:eofill:))
- [normalized(eoFill:)](/documentation/swiftui/path/normalized(eofill:))
- [subtracting(_:eoFill:)](/documentation/swiftui/path/subtracting(_:eofill:))
- [symmetricDifference(_:eoFill:)](/documentation/swiftui/path/symmetricdifference(_:eofill:))
- [union(_:eoFill:)](/documentation/swiftui/path/union(_:eofill:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
