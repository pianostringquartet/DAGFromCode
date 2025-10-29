---
title: contains(_:eoFill:)
description: Returns true if the path contains a specified point.
source: https://developer.apple.com/documentation/swiftui/path/contains(_:eofill:)
timestamp: 2025-10-29T00:13:55.388Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# contains(_:eoFill:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns true if the path contains a specified point.

```swift
func contains(_ p: CGPoint, eoFill: Bool = false) -> Bool
```

## Discussion

If `eoFill` is true, this method uses the even-odd rule to define which points are inside the path. Otherwise, it uses the non-zero rule.

## Getting the path’s characteristics

- [boundingRect](/documentation/swiftui/path/boundingrect)
- [cgPath](/documentation/swiftui/path/cgpath)
- [currentPoint](/documentation/swiftui/path/currentpoint)
- [description](/documentation/swiftui/path/description)
- [isEmpty](/documentation/swiftui/path/isempty)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
