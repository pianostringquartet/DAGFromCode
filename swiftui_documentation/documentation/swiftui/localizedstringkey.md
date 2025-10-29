---
title: LocalizedStringKey
description: The key used to look up an entry in a strings file or strings dictionary file.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey
timestamp: 2025-10-29T00:11:20.435Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LocalizedStringKey

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The key used to look up an entry in a strings file or strings dictionary file.

```swift
@frozen struct LocalizedStringKey
```

## Overview

Initializers for several SwiftUI types – such as [Text](/documentation/swiftui/text), [Toggle](/documentation/swiftui/toggle), [Picker](/documentation/swiftui/picker) and others –  implicitly look up a localized string when you provide a string literal. When you use the initializer `Text("Hello")`, SwiftUI creates a `LocalizedStringKey` for you and uses that to look up a localization of the `Hello` string. This works because `LocalizedStringKey` conforms to [Expressible By String Literal](/documentation/Swift/ExpressibleByStringLiteral).

Types whose initializers take a `LocalizedStringKey` usually have a corresponding initializer that accepts a parameter that conforms to [String Protocol](/documentation/Swift/StringProtocol). Passing a `String` variable to these initializers avoids localization, which is usually appropriate when the variable contains a user-provided value.

As a general rule, use a string literal argument when you want localization, and a string variable argument when you don’t. In the case where you want to localize the value of a string variable, use the string to create a new `LocalizedStringKey` instance.

The following example shows how to create [Text](/documentation/swiftui/text) instances both with and without localization. The title parameter provided to the [Section](/documentation/swiftui/section) is a literal string, so SwiftUI creates a `LocalizedStringKey` for it. However, the string entries in the `messageStore.today` array are `String` variables, so the [Text](/documentation/swiftui/text) views in the list use the string values verbatim.

```swift
List {
    Section(header: Text("Today")) {
        ForEach(messageStore.today) { message in
            Text(message.title)
        }
    }
}
```

If the app is localized into Japanese with the following translation of its `Localizable.strings` file:

```other
"Today" = "今日";
```

When run in Japanese, the example produces a list like the following, localizing “Today” for the section header, but not the list items.



## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByExtendedGraphemeClusterLiteral](/documentation/Swift/ExpressibleByExtendedGraphemeClusterLiteral)
- [ExpressibleByStringInterpolation](/documentation/Swift/ExpressibleByStringInterpolation)
- [ExpressibleByStringLiteral](/documentation/Swift/ExpressibleByStringLiteral)
- [ExpressibleByUnicodeScalarLiteral](/documentation/Swift/ExpressibleByUnicodeScalarLiteral)

## Creating a key from a literal value

- [init(_:)](/documentation/swiftui/localizedstringkey/init(_:)) Creates a localized string key from the given string value.
- [init(stringLiteral:)](/documentation/swiftui/localizedstringkey/init(stringliteral:)) Creates a localized string key from the given string literal.

## Creating a key from an interpolation

- [init(stringInterpolation:)](/documentation/swiftui/localizedstringkey/init(stringinterpolation:)) Creates a localized string key from the given string interpolation.
- [LocalizedStringKey.StringInterpolation](/documentation/swiftui/localizedstringkey/stringinterpolation) Represents the contents of a string literal with interpolations while it’s being built, for use in creating a localized string key.

## Localizing text

- [Preparing views for localization](/documentation/swiftui/preparing-views-for-localization)
- [locale](/documentation/swiftui/environmentvalues/locale)
- [typesettingLanguage(_:isEnabled:)](/documentation/swiftui/view/typesettinglanguage(_:isenabled:))
- [TypesettingLanguage](/documentation/swiftui/typesettinglanguage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
