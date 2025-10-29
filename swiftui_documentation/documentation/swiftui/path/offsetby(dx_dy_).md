---
title: offsetBy(dx:dy:)
description: Returns a path constructed by translating all its points.
source: https://developer.apple.com/documentation/swiftui/path/offsetby(dx:dy:)
timestamp: 2025-10-29T00:15:19.002Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# offsetBy(dx:dy:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a path constructed by translating all its points.

```swift
func offsetBy(dx: CGFloat, dy: CGFloat) -> Path
```

## Parameters

**dx**

The offset to apply in the horizontal axis.



**dy**

The offset to apply in the vertical axis.



## Return Value

A new copy of the path with the offset applied to all points.

## Transforming the path

- [applying(_:)](/documentation/swiftui/path/applying(_:))
- [trimmedPath(from:to:)](/documentation/swiftui/path/trimmedpath(from:to:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
