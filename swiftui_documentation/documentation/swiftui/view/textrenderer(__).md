---
title: textRenderer(_:)
description: Returns a new view such that any text views within it will use  to draw themselves.
source: https://developer.apple.com/documentation/swiftui/view/textrenderer(_:)
timestamp: 2025-10-29T00:09:48.454Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# textRenderer(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Returns a new view such that any text views within it will use  to draw themselves.

```swift
nonisolated func textRenderer<T>(_ renderer: T) -> some View where T : TextRenderer
```

## Parameters

**renderer**

The renderer value.



## Return Value

A new view that will use `renderer` to draw its text views.

## Rendering text

- [Creating visual effects with SwiftUI](/documentation/swiftui/creating-visual-effects-with-swiftui)
- [TextAttribute](/documentation/swiftui/textattribute)
- [TextRenderer](/documentation/swiftui/textrenderer)
- [TextProxy](/documentation/swiftui/textproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
