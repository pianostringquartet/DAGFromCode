---
title: init(stringInterpolation:)
description: Creates a localized string key from the given string interpolation.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey/init(stringinterpolation:)
timestamp: 2025-10-29T00:09:29.984Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [localizedstringkey](/documentation/swiftui/localizedstringkey)

**Initializer**

# init(stringInterpolation:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a localized string key from the given string interpolation.

```swift
init(stringInterpolation: LocalizedStringKey.StringInterpolation)
```

## Parameters

**stringInterpolation**

The string interpolation to use as the localization key.



## Discussion

To create a localized string key from a string interpolation, use the `\()` string interpolation syntax. Swift matches the parameter types in the expression to one of the `appendInterpolation` methods in [String Interpolation](/documentation/swiftui/localizedstringkey/stringinterpolation). The interpolated types can include numeric values, Foundation types, and SwiftUI [Text](/documentation/swiftui/text) and [Image](/documentation/swiftui/image) instances.

The following example uses a string interpolation with two arguments: an unlabeled [Date](/documentation/Foundation/Date) and a [Date Style](/documentation/swiftui/text/datestyle) labeled `style`. The compiler maps these to the method [appendInterpolation(_:style:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:style:)) as it builds the string that it creates the [Localized String Key](/documentation/swiftui/localizedstringkey) with.

```swift
let key = LocalizedStringKey("Date is \(company.foundedDate, style: .offset)")
let text = Text(key) // Text contains "Date is +45 years"
```

You can write this example more concisely, implicitly creating a [Localized String Key](/documentation/swiftui/localizedstringkey) as the parameter to the [Text](/documentation/swiftui/text) initializer:

```swift
let text = Text("Date is \(company.foundedDate, style: .offset)")
```

## Creating a key from an interpolation

- [LocalizedStringKey.StringInterpolation](/documentation/swiftui/localizedstringkey/stringinterpolation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
