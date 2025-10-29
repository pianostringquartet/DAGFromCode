---
title: glassBackgroundEffect(_:in:displayMode:)
description: Fills the view’s background with a custom glass background effect and a shape that you specify.
source: https://developer.apple.com/documentation/swiftui/view/glassbackgroundeffect(_:in:displaymode:)
timestamp: 2025-10-29T00:14:02.995Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# glassBackgroundEffect(_:in:displayMode:)

**Available on:** visionOS 2.4+

> Fills the view’s background with a custom glass background effect and a shape that you specify.

```swift
nonisolated func glassBackgroundEffect<T, S>(_ effect: S, in shape: T, displayMode: GlassBackgroundDisplayMode = .always) -> some View where T : InsettableShape, S : GlassBackgroundEffect
```

## Parameters

**effect**

A [Glass Background Effect](/documentation/swiftui/glassbackgroundeffect) instance that SwiftUI uses to the fill the background shape that you specify.



**shape**

An [Insettable Shape](/documentation/swiftui/insettableshape) instance that SwiftUI draws behind the view.



**displayMode**

When to display the glass background. The default is [always](/documentation/swiftui/glassbackgrounddisplaymode/always).



## Return Value

A view with a glass background.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
