---
title: TextRenderer
description: A value that can replace the default text view rendering behavior.
source: https://developer.apple.com/documentation/swiftui/textrenderer
timestamp: 2025-10-29T00:09:52.779Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TextRenderer

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A value that can replace the default text view rendering behavior.

```swift
protocol TextRenderer : Animatable
```

## Inherits From

- [Animatable](/documentation/swiftui/animatable)

## Instance Properties

- [displayPadding](/documentation/swiftui/textrenderer/displaypadding) Returns the size of the extra padding added to any drawing layer used to rasterize the text. For example when drawing the text with a shadow this may be used to extend the drawing bounds to avoid clipping the shadow.

## Instance Methods

- [draw(layout:in:)](/documentation/swiftui/textrenderer/draw(layout:in:)) Draws  into .
- [sizeThatFits(proposal:text:)](/documentation/swiftui/textrenderer/sizethatfits(proposal:text:)) Returns the size of the text in . The provided  proxy value may be used to query the sizing behavior of the underlying text layout.

## Rendering text

- [Creating visual effects with SwiftUI](/documentation/swiftui/creating-visual-effects-with-swiftui)
- [TextAttribute](/documentation/swiftui/textattribute)
- [textRenderer(_:)](/documentation/swiftui/view/textrenderer(_:))
- [TextProxy](/documentation/swiftui/textproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
