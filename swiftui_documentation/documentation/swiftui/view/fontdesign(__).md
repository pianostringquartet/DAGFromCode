---
title: fontDesign(_:)
description: Sets the font design of the text in this view.
source: https://developer.apple.com/documentation/swiftui/view/fontdesign(_:)
timestamp: 2025-10-29T00:13:44.417Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fontDesign(_:)

**Available on:** iOS 16.1+, iPadOS 16.1+, Mac Catalyst 16.1+, macOS 13.0+, tvOS 16.1+, visionOS 1.0+, watchOS 9.1+

> Sets the font design of the text in this view.

```swift
nonisolated func fontDesign(_ design: Font.Design?) -> some View
```

## Parameters

**design**

One of the available font designs. Providing `nil` removes the effect of any font design modifier applied higher in the view hierarchy.



## Return Value

A view that uses the font design you specify.

## Setting a font

- [Applying custom fonts to text](/documentation/swiftui/applying-custom-fonts-to-text)
- [font(_:)](/documentation/swiftui/view/font(_:))
- [fontWeight(_:)](/documentation/swiftui/view/fontweight(_:))
- [fontWidth(_:)](/documentation/swiftui/view/fontwidth(_:))
- [font](/documentation/swiftui/environmentvalues/font)
- [Font](/documentation/swiftui/font)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
