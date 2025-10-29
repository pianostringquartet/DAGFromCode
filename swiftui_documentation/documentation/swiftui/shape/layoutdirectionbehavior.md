---
title: layoutDirectionBehavior
description: Returns the behavior this shape should use for different layout directions.
source: https://developer.apple.com/documentation/swiftui/shape/layoutdirectionbehavior
timestamp: 2025-10-29T00:15:15.136Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Property**

# layoutDirectionBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns the behavior this shape should use for different layout directions.

```swift
nonisolated var layoutDirectionBehavior: LayoutDirectionBehavior { get }
```

## Discussion

If the layoutDirectionBehavior for a Shape is one that mirrors, the shape’s path will be mirrored horizontally when in the specified layout direction. When mirrored, the individual points of the path will be transformed.

Defaults to `.mirrors` when deploying on iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0 and later, and to `.fixed` if not. To mirror a path when deploying to earlier releases, either use `View.flipsForRightToLeftLayoutDirection` for a filled or stroked shape or conditionally mirror the points in the path of the shape.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
