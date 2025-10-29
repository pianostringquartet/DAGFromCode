---
title: Font.Resolved
description: A concrete font value.
source: https://developer.apple.com/documentation/swiftui/font/resolved
timestamp: 2025-10-29T00:15:26.884Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Structure**

# Font.Resolved

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A concrete font value.

```swift
struct Resolved
```

## Overview

`Font.Resolved` is a concrete representation of a Font that can be shown, with a specific set of `EnvironmentValues`. A `Resolved` font will always map to the same CTFont on a given platform.

> [!NOTE]
> `Font`.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Instance Properties

- [ctFont](/documentation/swiftui/font/resolved/ctfont) Returns the CTFont opaque type that represents a CoreText font object.
- [isBold](/documentation/swiftui/font/resolved/isbold) Returns  if the resolved font has a bold trait according to CoreText or the font’s weight is semi-bold or greater.
- [isItalic](/documentation/swiftui/font/resolved/isitalic) Returns  if the resolved font is italic.
- [isLowercaseSmallCaps](/documentation/swiftui/font/resolved/islowercasesmallcaps) Returns  if the resolved font’s lowercased characters use small caps.
- [isMonospaced](/documentation/swiftui/font/resolved/ismonospaced) Returns  if a resolved font is monospaced, false otherwise.
- [isSmallCaps](/documentation/swiftui/font/resolved/issmallcaps) Returns  if all of the resolved font’s characters use small caps.
- [isUppercaseSmallCaps](/documentation/swiftui/font/resolved/isuppercasesmallcaps) Returns  if the resolved font’s uppercased characters use small caps.
- [leading](/documentation/swiftui/font/resolved/leading) The leading of a resolved font.
- [pointSize](/documentation/swiftui/font/resolved/pointsize) The point size of a resolved font.
- [weight](/documentation/swiftui/font/resolved/weight) The weight of a resolved font.
- [width](/documentation/swiftui/font/resolved/width) The width of a resolved font.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
