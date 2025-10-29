---
title: explicit(_:)
description: Use explicit language.
source: https://developer.apple.com/documentation/swiftui/typesettinglanguage/explicit(_:)
timestamp: 2025-10-29T00:11:03.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [typesettinglanguage](/documentation/swiftui/typesettinglanguage)

**Type Method**

# explicit(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Use explicit language.

```swift
static func explicit(_ language: Locale.Language) -> TypesettingLanguage
```

## Parameters

**language**

The language to use for typesetting.



## Return Value

A `TypesettingLanguage`.

## Discussion

An explicit language will be used for typesetting. For example, if used with Thai language the line heights will be as tall as needed to accommodate Thai.

## Getting language behavior

- [automatic](/documentation/swiftui/typesettinglanguage/automatic)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
