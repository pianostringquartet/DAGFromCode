---
title: contentBased
description: The writing direction following the language of the string that is laid out.
source: https://developer.apple.com/documentation/swiftui/text/writingdirectionstrategy/contentbased
timestamp: 2025-10-29T00:12:25.043Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text) › [writingdirectionstrategy](/documentation/swiftui/text/writingdirectionstrategy)

**Type Property**

# contentBased

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The writing direction following the language of the string that is laid out.

```swift
static let contentBased: Text.WritingDirectionStrategy
```

## Discussion

The system may use different sources to determine the language of the string. This may include the characters used in the string, especially BiDi isolation markers, the language of the localization file the string was loaded from, or explicit annotations with the [language Identifier](/documentation/Foundation/AttributeScopes/FoundationAttributes/languageIdentifier) attribute.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
