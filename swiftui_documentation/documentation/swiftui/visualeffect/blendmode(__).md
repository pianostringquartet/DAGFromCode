---
title: blendMode(_:)
description: Sets the blend mode for compositing this view with overlapping views.
source: https://developer.apple.com/documentation/swiftui/visualeffect/blendmode(_:)
timestamp: 2025-10-29T00:10:38.151Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# blendMode(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets the blend mode for compositing this view with overlapping views.

```swift
func blendMode(_ blendMode: BlendMode) -> some VisualEffect
```

## Parameters

**blendMode**

The [Blend Mode](/documentation/swiftui/blendmode) for compositing.



## Return Value

An effect that applies `blendMode` to this view.

## Discussion

Use `blendMode(_:)` to combine overlapping views and use a different visual effect to produce the result. The [Blend Mode](/documentation/swiftui/blendmode) enumeration defines many possible effects.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
