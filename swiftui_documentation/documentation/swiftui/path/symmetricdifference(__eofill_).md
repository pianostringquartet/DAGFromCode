---
title: symmetricDifference(_:eoFill:)
description: Returns a new path with filled regions either from this path or the given path, but not in both.
source: https://developer.apple.com/documentation/swiftui/path/symmetricdifference(_:eofill:)
timestamp: 2025-10-29T00:12:48.040Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# symmetricDifference(_:eoFill:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new path with filled regions either from this path or the given path, but not in both.

```swift
func symmetricDifference(_ other: Path, eoFill: Bool = false) -> Path
```

## Parameters

**other**

The path to difference.



**eoFill**

Whether to use the even-odd rule for determining which areas to treat as the interior of the paths (if true), or the non-zero rule (if false).



## Return Value

A new path.

## Discussion

The filled region of the resulting path is the filled region contained in either this path or `other`, but not both.

Any unclosed subpaths in either path are assumed to be closed. The result of filling this path using either even-odd or non-zero fill rules is identical.

## Performing operations on the path

- [addRoundedRect(in:cornerSize:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornersize:style:transform:))
- [intersection(_:eoFill:)](/documentation/swiftui/path/intersection(_:eofill:))
- [lineIntersection(_:eoFill:)](/documentation/swiftui/path/lineintersection(_:eofill:))
- [lineSubtraction(_:eoFill:)](/documentation/swiftui/path/linesubtraction(_:eofill:))
- [normalized(eoFill:)](/documentation/swiftui/path/normalized(eofill:))
- [subtracting(_:eoFill:)](/documentation/swiftui/path/subtracting(_:eofill:))
- [union(_:eoFill:)](/documentation/swiftui/path/union(_:eofill:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
