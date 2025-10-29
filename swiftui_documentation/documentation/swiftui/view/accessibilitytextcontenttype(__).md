---
title: accessibilityTextContentType(_:)
description: Sets an accessibility text content type.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitytextcontenttype(_:)
timestamp: 2025-10-29T00:14:11.187Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityTextContentType(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets an accessibility text content type.

```swift
nonisolated func accessibilityTextContentType(_ value: AccessibilityTextContentType) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Parameters

**value**

The accessibility content type from the available [Accessibility Text Content Type](/documentation/swiftui/accessibilitytextcontenttype) options.



## Discussion

Use this modifier to set the content type of this accessibility element. Assistive technologies can use this property to choose an appropriate way to output the text. For example, when encountering a source coding context, VoiceOver could choose to speak all punctuation.

The default content type [plain](/documentation/swiftui/accessibilitytextcontenttype/plain).

## Describing content

- [accessibilityHeading(_:)](/documentation/swiftui/view/accessibilityheading(_:))
- [AccessibilityHeadingLevel](/documentation/swiftui/accessibilityheadinglevel)
- [AccessibilityTextContentType](/documentation/swiftui/accessibilitytextcontenttype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
