---
title: body(content:)
description: Defines the effect produced by this effect.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/body(content:)
timestamp: 2025-10-29T00:10:24.585Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Instance Method**

# body(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+

> Defines the effect produced by this effect.

```swift
func body(content: Self.Content) -> Self.Body
```

## Parameters

**content**

An empty effect you use to compose the custom effect.



## Return Value

A custom effect.

## Discussion

You implement this method to describe a custom effect to apply to a view. `content` is an empty effect you use to build your effect, which will later be applied to a View, or combined with other `CustomHoverEffect`s.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
