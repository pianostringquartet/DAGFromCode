---
title: glassBackgroundEffect(_:displayMode:)
description: Fills the view’s background with a custom glass background effect and container-relative rounded rectangle shape.
source: https://developer.apple.com/documentation/swiftui/view/glassbackgroundeffect(_:displaymode:)
timestamp: 2025-10-29T00:10:00.220Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# glassBackgroundEffect(_:displayMode:)

**Available on:** visionOS 2.4+

> Fills the view’s background with a custom glass background effect and container-relative rounded rectangle shape.

```swift
nonisolated func glassBackgroundEffect<S>(_ effect: S, displayMode: GlassBackgroundDisplayMode = .always) -> some View where S : GlassBackgroundEffect
```

## Parameters

**effect**

A [Glass Background Effect](/documentation/swiftui/glassbackgroundeffect) instance that SwiftUI uses to draw a background of the modified view.



**displayMode**

When to display the glass background. The default is [always](/documentation/swiftui/glassbackgrounddisplaymode/always).



## Return Value

A view with a glass background.

## Discussion

Use this modifier to add a glass material that may include thickness, specularity, glass blur, shadows, and other effects. Because of its physical depth, the background influences z-axis layout. For different effect, the bakcground may influences x-axis and y-axis layout.

To ensure that the effect renders properly when you add it to a collection of views in a [ZStack](/documentation/swiftui/zstack), add the modifier to the stack rather to one of the views in the stack. This includes when you create an implicit stack with view modifiers like [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) or [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)). In those cases, you might need to create an explicit [ZStack](/documentation/swiftui/zstack) inside the `content` closure to have a place to add the background modifier.

Non closed shapes will be rendered as their convex hull.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
