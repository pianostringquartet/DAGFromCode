---
title: init(_:width:height:)
description: Creates a new window placement with a display-relative position, with an optional width and height.
source: https://developer.apple.com/documentation/swiftui/windowplacement/init(_:width:height:)
timestamp: 2025-10-29T00:14:20.110Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowplacement](/documentation/swiftui/windowplacement)

**Initializer**

# init(_:width:height:)

**Available on:** macOS 15.0+

> Creates a new window placement with a display-relative position, with an optional width and height.

```swift
init(_ position: UnitPoint, width: CGFloat? = nil, height: CGFloat? = nil)
```

## Discussion

Any values not provided will use use the default values for the `Scene` that this placement is being applied to.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
