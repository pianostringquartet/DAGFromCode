---
title: imagePlaygroundGenerationStyle(_:in:)
description: Sets the generation style for an image playground.
source: https://developer.apple.com/documentation/swiftui/view/imageplaygroundgenerationstyle(_:in:)
timestamp: 2025-10-29T00:15:33.097Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# imagePlaygroundGenerationStyle(_:in:)

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+, macOS 15.4+, visionOS 2.4+

> Sets the generation style for an image playground.

```swift
nonisolated func imagePlaygroundGenerationStyle(_ style: ImagePlaygroundStyle, in allowedStyles: [ImagePlaygroundStyle] = ImagePlaygroundStyle.all) -> some View
```

## Parameters

**style**

The generation style that the playground uses.



**allowedStyles**

The list of generation styles that the `style` input can have. Use `ImagePlaygroundStyle.all` to check the list of all possible styles, and pass a subset of those.



## Return Value

An image playground sheet that uses one of the specified generation `styles`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
