---
title: accessibilityHeading(_:)
description: Sets the accessibility level of this heading.
source: https://developer.apple.com/documentation/swiftui/text/accessibilityheading(_:)
timestamp: 2025-10-29T00:10:14.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# accessibilityHeading(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the accessibility level of this heading.

```swift
nonisolated func accessibilityHeading(_ level: AccessibilityHeadingLevel) -> Text
```

## Parameters

**level**

The heading level to associate with this element from the available [Accessibility Heading Level](/documentation/swiftui/accessibilityheadinglevel) levels.



## Discussion

Use this modifier to set the level of this heading in relation to other headings. The system speaks the level number of levels [h1](/documentation/swiftui/accessibilityheadinglevel/h1) through [h6](/documentation/swiftui/accessibilityheadinglevel/h6) alongside the text.

The default heading level if you don’t use this modifier is [unspecified](/documentation/swiftui/accessibilityheadinglevel/unspecified).

## Providing accessibility information

- [accessibilityLabel(_:)](/documentation/swiftui/text/accessibilitylabel(_:))
- [accessibilityTextContentType(_:)](/documentation/swiftui/text/accessibilitytextcontenttype(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
