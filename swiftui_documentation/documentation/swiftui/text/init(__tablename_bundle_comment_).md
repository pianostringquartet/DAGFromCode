---
title: init(_:tableName:bundle:comment:)
description: Creates a text view that displays localized content identified by a key.
source: https://developer.apple.com/documentation/swiftui/text/init(_:tablename:bundle:comment:)
timestamp: 2025-10-29T00:14:25.349Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Initializer**

# init(_:tableName:bundle:comment:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a text view that displays localized content identified by a key.

```swift
init(_ key: LocalizedStringKey, tableName: String? = nil, bundle: Bundle? = nil, comment: StaticString? = nil)
```

## Parameters

**key**

The key for a string in the table identified by `tableName`.



**tableName**

The name of the string table to search. If `nil`, use the table in the `Localizable.strings` file.



**bundle**

The bundle containing the strings file. If `nil`, use the main bundle.



**comment**

Contextual information about this key-value pair.



## Discussion

Use this initializer to look for the `key` parameter in a localization table and display the associated string value in the initialized text view. If the initializer can’t find the key in the table, or if no table exists, the text view displays the string representation of the key instead.

```swift
Text("pencil") // Localizes the key if possible, or displays "pencil" if not.
```

When you initialize a text view with a string literal, the view triggers this initializer because it assumes you want the string localized, even when you don’t explicitly specify a table, as in the above example. If you haven’t provided localization for a particular string, you still get reasonable behavior, because the initializer displays the key, which typically contains the unlocalized string.

If you initialize a text view with a string variable rather than a string literal, the view triggers the [init(_:)](/documentation/swiftui/text/init(_:)-9d1g4) initializer instead, because it assumes that you don’t want localization in that case. If you do want to localize the value stored in a string variable, you can choose to call the `init(_:tableName:bundle:comment:)` initializer by first creating a [Localized String Key](/documentation/swiftui/localizedstringkey) instance from the string variable:

```swift
Text(LocalizedStringKey(someString)) // Localizes the contents of `someString`.
```

If you have a string literal that you don’t want to localize, use the [init(verbatim:)](/documentation/swiftui/text/init(verbatim:)) initializer instead.

### Styling localized strings with markdown

If the localized string or the fallback key contains Markdown, the view displays the text with appropriate styling. For example, consider an app with the following entry in its Spanish localization file:

```swift
"_Please visit our [website](https://www.example.com)._" = "_Visita nuestro [sitio web](https://www.example.com)._";
```

You can create a `Text` view with the Markdown-formatted base language version of the string as the localization key, like this:

```swift
Text("_Please visit our [website](https://www.example.com)._")
```

When viewed in a Spanish locale, the view uses the Spanish text from the strings file, applying the Markdown styling.



> [!IMPORTANT]
> `Text` doesn’t render all styling possible in Markdown. It doesn’t support line breaks, soft breaks, or any style of paragraph- or block-based formatting like lists, block quotes, code blocks, or tables. It also doesn’t support the [image URL](/documentation/Foundation/AttributeScopes/FoundationAttributes/imageURL) attribute. Parsing with SwiftUI treats any whitespace in the Markdown string as described by the [inline Only Preserving Whitespace](/documentation/Foundation/AttributedString/MarkdownParsingOptions/InterpretedSyntax-swift.enum/inlineOnlyPreservingWhitespace) parsing option.

## Creating a text view

- [init(_:)](/documentation/swiftui/text/init(_:))
- [init(verbatim:)](/documentation/swiftui/text/init(verbatim:))
- [init(_:style:)](/documentation/swiftui/text/init(_:style:))
- [init(_:format:)](/documentation/swiftui/text/init(_:format:))
- [init(_:formatter:)](/documentation/swiftui/text/init(_:formatter:))
- [init(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/text/init(timerinterval:pausetime:countsdown:showshours:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
