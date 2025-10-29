---
title: typesettingLanguage(_:isEnabled:)
description: Specifies the language for typesetting.
source: https://developer.apple.com/documentation/swiftui/view/typesettinglanguage(_:isenabled:)
timestamp: 2025-10-29T00:09:15.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# typesettingLanguage(_:isEnabled:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Specifies the language for typesetting.

```swift
nonisolated func typesettingLanguage(_ language: Locale.Language, isEnabled: Bool = true) -> some View
```

## Parameters

**language**

The explicit language to use for typesetting.



**isEnabled**

A Boolean value that indicates whether text language is added



## Return Value

A view with the typesetting language set to the value you supply.

## Discussion

In some cases `Text` may contain text of a particular language which doesn’t match the device UI language. In that case it’s useful to specify a language so line height, line breaking and spacing will respect the script used for that language. For example:

```swift
Text(verbatim: "แอปเปิล")
    .typesettingLanguage(.init(languageCode: .thai))
```

Note: this language does not affect text localization.

## Localizing text

- [Preparing views for localization](/documentation/swiftui/preparing-views-for-localization)
- [LocalizedStringKey](/documentation/swiftui/localizedstringkey)
- [locale](/documentation/swiftui/environmentvalues/locale)
- [TypesettingLanguage](/documentation/swiftui/typesettinglanguage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
