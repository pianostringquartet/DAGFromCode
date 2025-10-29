---
title: layoutDirection
description: The layout direction inherited by the container view.
source: https://developer.apple.com/documentation/swiftui/layoutsubviews/layoutdirection
timestamp: 2025-10-29T00:12:49.052Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutsubviews](/documentation/swiftui/layoutsubviews)

**Instance Property**

# layoutDirection

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The layout direction inherited by the container view.

```swift
var layoutDirection: LayoutDirection
```

## Discussion

SwiftUI supports both left-to-right and right-to-left directions. Read this property within a custom layout container to find out which environment the container is in.

In most cases, you don’t need to take any action based on this value. SwiftUI horizontally flips the x position of each view within its parent when the mode switches, so layout calculations automatically produce the desired effect for both directions.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
