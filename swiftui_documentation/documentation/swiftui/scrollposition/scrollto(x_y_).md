---
title: scrollTo(x:y:)
description: Scrolls the position of the scroll view to the x and y value you provide.
source: https://developer.apple.com/documentation/swiftui/scrollposition/scrollto(x:y:)
timestamp: 2025-10-29T00:14:04.200Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Instance Method**

# scrollTo(x:y:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Scrolls the position of the scroll view to the x and y value you provide.

```swift
mutating func scrollTo(x: CGFloat, y: CGFloat)
```

## Discussion

The scroll view will clamp this value to only scroll to the size of its actual content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
