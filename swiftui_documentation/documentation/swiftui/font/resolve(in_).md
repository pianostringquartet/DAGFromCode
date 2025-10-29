---
title: resolve(in:)
description: Evaluates this font to a resolved font given the current context.
source: https://developer.apple.com/documentation/swiftui/font/resolve(in:)
timestamp: 2025-10-29T00:13:07.659Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# resolve(in:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Evaluates this font to a resolved font given the current context.

```swift
func resolve(in context: Font.Context) -> Font.Resolved
```

## Discussion

The system resolves a font’s value at the time it uses the font in a given environment’s context because [Font](/documentation/swiftui/font) is a late-binding token.

> [!NOTE]
> [font Resolution Context](/documentation/swiftui/environmentvalues/fontresolutioncontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
