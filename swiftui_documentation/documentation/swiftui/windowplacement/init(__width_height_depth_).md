---
title: init(_:width:height:depth:)
description: Creates a new window placement with an optional position and 3D size. Depth is ignored on scenes or platforms that don’t support it.
source: https://developer.apple.com/documentation/swiftui/windowplacement/init(_:width:height:depth:)
timestamp: 2025-10-29T00:10:01.567Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowplacement](/documentation/swiftui/windowplacement)

**Initializer**

# init(_:width:height:depth:)

**Available on:** visionOS 2.0+

> Creates a new window placement with an optional position and 3D size. Depth is ignored on scenes or platforms that don’t support it.

```swift
init(_ position: WindowPlacement.Position? = nil, width: CGFloat? = nil, height: CGFloat? = nil, depth: CGFloat? = nil)
```

## Discussion

Any values not provided will use use the default values for the `Scene` that this placement is being applied to.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
