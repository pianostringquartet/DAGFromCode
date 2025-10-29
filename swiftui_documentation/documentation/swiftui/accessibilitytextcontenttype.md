---
title: AccessibilityTextContentType
description: Textual context that assistive technologies can use to improve the presentation of spoken text.
source: https://developer.apple.com/documentation/swiftui/accessibilitytextcontenttype
timestamp: 2025-10-29T00:10:12.973Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessibilityTextContentType

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Textual context that assistive technologies can use to improve the presentation of spoken text.

```swift
struct AccessibilityTextContentType
```

## Overview

Use an `AccessibilityTextContentType` value when setting the accessibility text content type of a view using the [accessibilityTextContentType(_:)](/documentation/swiftui/view/accessibilitytextcontenttype(_:)) modifier.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting content types

- [console](/documentation/swiftui/accessibilitytextcontenttype/console) A type that represents text used for input, like in the Terminal app.
- [fileSystem](/documentation/swiftui/accessibilitytextcontenttype/filesystem) A type that represents text used by a file browser, like in the Finder app in macOS.
- [messaging](/documentation/swiftui/accessibilitytextcontenttype/messaging) A type that represents text used in a message, like in the Messages app.
- [narrative](/documentation/swiftui/accessibilitytextcontenttype/narrative) A type that represents text used in a story or poem, like in the Books app.
- [plain](/documentation/swiftui/accessibilitytextcontenttype/plain) A type that represents generic text that has no specific type.
- [sourceCode](/documentation/swiftui/accessibilitytextcontenttype/sourcecode) A type that represents text used in source code, like in Swift Playgrounds.
- [spreadsheet](/documentation/swiftui/accessibilitytextcontenttype/spreadsheet) A type that represents text used in a grid of data, like in the Numbers app.
- [wordProcessing](/documentation/swiftui/accessibilitytextcontenttype/wordprocessing) A type that represents text used in a document, like in the Pages app.

## Describing content

- [accessibilityTextContentType(_:)](/documentation/swiftui/view/accessibilitytextcontenttype(_:))
- [accessibilityHeading(_:)](/documentation/swiftui/view/accessibilityheading(_:))
- [AccessibilityHeadingLevel](/documentation/swiftui/accessibilityheadinglevel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
