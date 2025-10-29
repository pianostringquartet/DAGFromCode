---
title: applying(_:)
description: Returns a path constructed by applying the transform to all points of the path.
source: https://developer.apple.com/documentation/swiftui/path/applying(_:)
timestamp: 2025-10-29T00:10:12.278Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# applying(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a path constructed by applying the transform to all points of the path.

```swift
func applying(_ transform: CGAffineTransform) -> Path
```

## Parameters

**transform**

An affine transform to apply to the path.



## Return Value

A new copy of the path with the transform applied to all points.

## Transforming the path

- [offsetBy(dx:dy:)](/documentation/swiftui/path/offsetby(dx:dy:))
- [trimmedPath(from:to:)](/documentation/swiftui/path/trimmedpath(from:to:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
