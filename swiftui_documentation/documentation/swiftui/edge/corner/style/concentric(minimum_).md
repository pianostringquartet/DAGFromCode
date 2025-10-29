---
title: concentric(minimum:)
description: The concentric corner style with an optional minimum corner style. When a corner is concentric to its container, it will adjust the current corner radius to ensure that the container corner radius equals to current corner radius plus the distance between corners. If the current corner is too far away from the container corner, the radius will be resolved as zero unless a minimum corner style is provided.
source: https://developer.apple.com/documentation/swiftui/edge/corner/style/concentric(minimum:)
timestamp: 2025-10-29T00:13:58.932Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [edge](/documentation/swiftui/edge) › [corner](/documentation/swiftui/edge/corner) › [style](/documentation/swiftui/edge/corner/style)

**Type Method**

# concentric(minimum:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The concentric corner style with an optional minimum corner style. When a corner is concentric to its container, it will adjust the current corner radius to ensure that the container corner radius equals to current corner radius plus the distance between corners. If the current corner is too far away from the container corner, the radius will be resolved as zero unless a minimum corner style is provided.

```swift
static func concentric(minimum: Edge.Corner.Style? = nil) -> Edge.Corner.Style
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
