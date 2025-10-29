---
title: spatialOverlayPreferenceValue(_:alignment:_:)
description: Uses the specified preference value from the view to produce another view occupying the same 3D space of the first view.
source: https://developer.apple.com/documentation/swiftui/view/spatialoverlaypreferencevalue(_:alignment:_:)
timestamp: 2025-10-29T00:11:31.066Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# spatialOverlayPreferenceValue(_:alignment:_:)

**Available on:** visionOS 26.0+

> Uses the specified preference value from the view to produce another view occupying the same 3D space of the first view.

```swift
nonisolated func spatialOverlayPreferenceValue<K, V>(_ key: K.Type, alignment: Alignment3D = .center, @ViewBuilder _ transform: @escaping (K.Value) -> V) -> some View where K : PreferenceKey, V : View
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
