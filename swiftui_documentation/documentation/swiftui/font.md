---
title: Font
description: An environment-dependent font.
source: https://developer.apple.com/documentation/swiftui/font
timestamp: 2025-10-29T00:15:15.796Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Font

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An environment-dependent font.

```swift
@frozen struct Font
```

## Overview

The system resolves a font’s value at the time it uses the font in a given environment because [Font](/documentation/swiftui/font) is a late-binding token.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting standard fonts

- [extraLargeTitle2](/documentation/swiftui/font/extralargetitle2) Create a font with the second level extra large title text style.
- [extraLargeTitle](/documentation/swiftui/font/extralargetitle) Create a font with the extra large title text style.
- [largeTitle](/documentation/swiftui/font/largetitle) A font with the large title text style.
- [title](/documentation/swiftui/font/title) A font with the title text style.
- [title2](/documentation/swiftui/font/title2) Create a font for second level hierarchical headings.
- [title3](/documentation/swiftui/font/title3) Create a font for third level hierarchical headings.
- [headline](/documentation/swiftui/font/headline) A font with the headline text style.
- [subheadline](/documentation/swiftui/font/subheadline) A font with the subheadline text style.
- [body](/documentation/swiftui/font/body) A font with the body text style.
- [callout](/documentation/swiftui/font/callout) A font with the callout text style.
- [caption](/documentation/swiftui/font/caption) A font with the caption text style.
- [caption2](/documentation/swiftui/font/caption2) Create a font with the alternate caption text style.
- [footnote](/documentation/swiftui/font/footnote) A font with the footnote text style.

## Getting system fonts

- [system(_:design:weight:)](/documentation/swiftui/font/system(_:design:weight:)) Gets a system font that uses the specified style, design, and weight.
- [system(size:weight:design:)](/documentation/swiftui/font/system(size:weight:design:)-697b2) Specifies a system font to use, along with the style, weight, and any design parameters you want applied to the text.
- [Font.Design](/documentation/swiftui/font/design) A design to use for fonts.
- [Font.TextStyle](/documentation/swiftui/font/textstyle) A dynamic text style to use for fonts.
- [Font.Weight](/documentation/swiftui/font/weight) A weight to use for fonts.

## Creating custom fonts

- [custom(_:fixedSize:)](/documentation/swiftui/font/custom(_:fixedsize:)) Create a custom font with the given  and a fixed  that does not scale with Dynamic Type.
- [custom(_:size:relativeTo:)](/documentation/swiftui/font/custom(_:size:relativeto:)) Create a custom font with the given  and  that scales relative to the given .
- [custom(_:size:)](/documentation/swiftui/font/custom(_:size:)) Create a custom font with the given  and  that scales with the body text style.

## Getting a font from another font

- [init(_:)](/documentation/swiftui/font/init(_:)) Creates a custom font from a platform font instance.

## Styling a font

- [bold()](/documentation/swiftui/font/bold()) Adds bold or emphasized styling to the font.
- [italic()](/documentation/swiftui/font/italic()) Adds italics to the font.
- [monospaced()](/documentation/swiftui/font/monospaced()) Returns a fixed-width font from the same family as the base font.
- [monospacedDigit()](/documentation/swiftui/font/monospaceddigit()) Returns a modified font that uses fixed-width digits, while leaving other characters proportionally spaced.
- [smallCaps()](/documentation/swiftui/font/smallcaps()) Adjusts the font to enable all small capitals.
- [lowercaseSmallCaps()](/documentation/swiftui/font/lowercasesmallcaps()) Adjusts the font to enable lowercase small capitals.
- [uppercaseSmallCaps()](/documentation/swiftui/font/uppercasesmallcaps()) Adjusts the font to enable uppercase small capitals.
- [weight(_:)](/documentation/swiftui/font/weight(_:)) Sets the weight of the font.
- [width(_:)](/documentation/swiftui/font/width(_:)) Sets the width of the font.
- [Font.Width](/documentation/swiftui/font/width) A width to use for fonts that have multiple widths.
- [leading(_:)](/documentation/swiftui/font/leading(_:)) Adjusts the line spacing of a font.
- [Font.Leading](/documentation/swiftui/font/leading) A line spacing adjustment that you can apply to a font.

## Deprecated symbols

- [system(_:design:)](/documentation/swiftui/font/system(_:design:)) Gets a system font with the given text style and design.
- [system(size:weight:design:)](/documentation/swiftui/font/system(size:weight:design:)-73a88) Specifies a system font to use, along with the style, weight, and any design parameters you want applied to the text.

## Structures

- [Font.Context](/documentation/swiftui/font/context) Information used to resolve a font.
- [Font.Resolved](/documentation/swiftui/font/resolved) A concrete font value.

## Instance Methods

- [bold(_:)](/documentation/swiftui/font/bold(_:)) Adds or removes bold or emphasized styling on the font.
- [italic(_:)](/documentation/swiftui/font/italic(_:)) Adds/removes italics on the font.
- [lowercaseSmallCaps(_:)](/documentation/swiftui/font/lowercasesmallcaps(_:)) Adjusts the font to enable/disable lowercase small capitals.
- [monospaced(_:)](/documentation/swiftui/font/monospaced(_:)) Returns a font adding or removing fixed-width design from the same family as the base font.
- [pointSize(_:)](/documentation/swiftui/font/pointsize(_:)) Sets the point size of the font explicitly.
- [resolve(in:)](/documentation/swiftui/font/resolve(in:)) Evaluates this font to a resolved font given the current context.
- [scaled(by:)](/documentation/swiftui/font/scaled(by:)) Scales the point size of the font.
- [smallCaps(_:)](/documentation/swiftui/font/smallcaps(_:)) Adjusts the font to enable/disable all small capitals.
- [uppercaseSmallCaps(_:)](/documentation/swiftui/font/uppercasesmallcaps(_:)) Adjusts the font to enable/disable uppercase small capitals.

## Type Properties

- [default](/documentation/swiftui/font/default) The effective SwiftUI font used in any given environment.

## Type Methods

- [system(size:weight:design:)](/documentation/swiftui/font/system(size:weight:design:)) Specifies a system font to use, along with the style, weight, and any design parameters you want applied to the text.

## Setting a font

- [Applying custom fonts to text](/documentation/swiftui/applying-custom-fonts-to-text)
- [font(_:)](/documentation/swiftui/view/font(_:))
- [fontDesign(_:)](/documentation/swiftui/view/fontdesign(_:))
- [fontWeight(_:)](/documentation/swiftui/view/fontweight(_:))
- [fontWidth(_:)](/documentation/swiftui/view/fontwidth(_:))
- [font](/documentation/swiftui/environmentvalues/font)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
