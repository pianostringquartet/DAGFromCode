---
title: isPositionedByUser
description: Whether the scroll view has been positioned by the user.
source: https://developer.apple.com/documentation/swiftui/scrollposition/ispositionedbyuser
timestamp: 2025-10-29T00:10:55.455Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Instance Property**

# isPositionedByUser

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Whether the scroll view has been positioned by the user.

```swift
var isPositionedByUser: Bool { get set }
```

## Discussion

You can write to this property to control whether the scroll view acts as if it has been positioned by the user. If the position had a non-nil edge / point value, that value will become nil when setting this property to true.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
