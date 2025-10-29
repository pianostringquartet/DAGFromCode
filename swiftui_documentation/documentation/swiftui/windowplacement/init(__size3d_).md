---
title: init(_:size3D:)
description: Creates a new window placement with an optional position and 3D size. Depth is ignored on scenes that don’t support it.
source: https://developer.apple.com/documentation/swiftui/windowplacement/init(_:size3d:)
timestamp: 2025-10-29T00:15:02.052Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowplacement](/documentation/swiftui/windowplacement)

**Initializer**

# init(_:size3D:)

**Available on:** visionOS 2.0+

> Creates a new window placement with an optional position and 3D size. Depth is ignored on scenes that don’t support it.

```swift
init(_ position: WindowPlacement.Position? = nil, size3D: Size3D? = nil)
```

## Discussion

Any values not provided will use use the default values for the `Scene` that this placement is being applied to.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
