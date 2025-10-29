---
title: automatic
description: Automatic language behavior.
source: https://developer.apple.com/documentation/swiftui/typesettinglanguage/automatic
timestamp: 2025-10-29T00:13:44.779Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [typesettinglanguage](/documentation/swiftui/typesettinglanguage)

**Type Property**

# automatic

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Automatic language behavior.

```swift
static let automatic: TypesettingLanguage
```

## Discussion

When determining the language to use for typesetting the current UI language and preferred languages will be considered. For example, if the current UI locale is for English and Thai is included in the preferred languages then line heights will be taller to accommodate the taller glyphs used by Thai.

## Getting language behavior

- [explicit(_:)](/documentation/swiftui/typesettinglanguage/explicit(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
