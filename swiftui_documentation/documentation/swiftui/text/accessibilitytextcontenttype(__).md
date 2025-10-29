---
title: accessibilityTextContentType(_:)
description: Sets an accessibility text content type.
source: https://developer.apple.com/documentation/swiftui/text/accessibilitytextcontenttype(_:)
timestamp: 2025-10-29T00:12:57.797Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# accessibilityTextContentType(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets an accessibility text content type.

```swift
nonisolated func accessibilityTextContentType(_ value: AccessibilityTextContentType) -> Text
```

## Parameters

**value**

The accessibility content type from the available [Accessibility Text Content Type](/documentation/swiftui/accessibilitytextcontenttype) options.



## Discussion

Use this modifier to set the content type of this accessibility element. Assistive technologies can use this property to choose an appropriate way to output the text. For example, when encountering a source coding context, VoiceOver could choose to speak all punctuation.

If you don’t set a value with this method, the default content type is [plain](/documentation/swiftui/accessibilitytextcontenttype/plain).

## Providing accessibility information

- [accessibilityHeading(_:)](/documentation/swiftui/text/accessibilityheading(_:))
- [accessibilityLabel(_:)](/documentation/swiftui/text/accessibilitylabel(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
