---
title: pointSize(_:)
description: Sets the point size of the font explicitly.
source: https://developer.apple.com/documentation/swiftui/font/pointsize(_:)
timestamp: 2025-10-29T00:09:16.891Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# pointSize(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Sets the point size of the font explicitly.

```swift
func pointSize(_ size: CGFloat) -> Font
```

## Discussion

Setting the point size explicitly will result in style based fonts no longer scaling with the device’s preferred text size. To scale a font’s size relative to its current size, see [scaled(by:)](/documentation/swiftui/font/scaled(by:)).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
