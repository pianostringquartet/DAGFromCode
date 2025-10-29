---
title: init(_:)
description: Creates a text view that displays styled attributed content.
source: https://developer.apple.com/documentation/swiftui/text/init(_:)
timestamp: 2025-10-29T00:14:32.697Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Initializer**

# init(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a text view that displays styled attributed content.

```swift
init(_ attributedContent: AttributedString)
```

## Parameters

**attributedContent**

An attributed string to style and display, in accordance with its attributes.



### Format text by combining attributes and view modifiers

Use this initializer to style text according to attributes found in the specified [Attributed String](/documentation/Foundation/AttributedString). Attributes in the attributed string take precedence over styles added by view modifiers. For example, the attributed text in the following example appears in blue, despite the use of the [foregroundColor(_:)](/documentation/swiftui/view/foregroundcolor(_:)) modifier to use red throughout the enclosing [VStack](/documentation/swiftui/vstack):

```swift
var content: AttributedString {
    var attributedString = AttributedString("Blue text")
    attributedString.foregroundColor = .blue
    return attributedString
}

var body: some View {
    VStack {
        Text(content)
        Text("Red text")
    }
    .foregroundColor(.red)
}
```



SwiftUI combines text attributes with SwiftUI modifiers whenever possible. For example, the following listing creates text that is both bold and red:

```swift
var content: AttributedString {
    var content = AttributedString("Some text")
    content.inlinePresentationIntent = .stronglyEmphasized
    return content
}

var body: some View {
    Text(content).foregroundColor(Color.red)
}
```

### Supported Foundation attributes

A SwiftUI [Text](/documentation/swiftui/text) view renders most of the styles defined by the Foundation attribute [inline Presentation Intent](/documentation/Foundation/AttributeScopes/FoundationAttributes/inlinePresentationIntent), like the [strongly Emphasized](/documentation/Foundation/InlinePresentationIntent/stronglyEmphasized) value, which SwiftUI presents as bold text.

> [!IMPORTANT]
> [Text](/documentation/swiftui/text) uses only a subset of the attributes defined in [Foundation Attributes](/documentation/Foundation/AttributeScopes/FoundationAttributes). `Text` renders all [Inline Presentation Intent](/documentation/Foundation/InlinePresentationIntent) attributes except for [line Break](/documentation/Foundation/InlinePresentationIntent/lineBreak) and [soft Break](/documentation/Foundation/InlinePresentationIntent/softBreak). It also respects [writing Direction](/documentation/Foundation/AttributeScopes/FoundationAttributes/writingDirection) and renders the [link](/documentation/Foundation/AttributeScopes/FoundationAttributes/link) attribute as a clickable link. `Text` ignores any other Foundation-defined attributes in an attributed string.

### SwiftUI attributes

SwiftUI also defines additional attributes in the attribute scope [Swift UIAttributes](/documentation/Foundation/AttributeScopes/SwiftUIAttributes) which you can access from an attributed string’s [swift UI](/documentation/Foundation/AttributeScopes/swiftUI) property. SwiftUI attributes take precedence over equivalent attributes from other frameworks, such as [UIKit Attributes](/documentation/Foundation/AttributeScopes/UIKitAttributes) and [App Kit Attributes](/documentation/Foundation/AttributeScopes/AppKitAttributes).

### Markdown support

You can create an `AttributedString` with Markdown syntax, which allows you to style distinct runs within a `Text` view:

```swift
let content = try! AttributedString(
    markdown: "**Thank You!** Please visit our [website](http://example.com).")

var body: some View {
    Text(content)
}
```

The `**` syntax around “Thank You!” applies an [inline Presentation Intent](/documentation/Foundation/AttributeScopes/FoundationAttributes/inlinePresentationIntent) attribute with the value [strongly Emphasized](/documentation/Foundation/InlinePresentationIntent/stronglyEmphasized). SwiftUI renders this as bold text, as described earlier. The link syntax around “website” creates a [link](/documentation/Foundation/AttributeScopes/FoundationAttributes/link) attribute, which `Text` styles to indicate it’s a link; by default, clicking or tapping the link opens the linked URL in the user’s default browser. Alternatively, you can perform custom link handling by putting an [Open URLAction](/documentation/swiftui/openurlaction) in the text view’s environment.



You can also use Markdown syntax in localized string keys, which means you can write the above example without needing to explicitly create an `AttributedString`:

```swift
var body: some View {
    Text("**Thank You!** Please visit our [website](https://example.com).")
}
```

In your app’s strings files, use Markdown syntax to apply styling to the app’s localized strings. You also use this approach when you want to perform automatic grammar agreement on localized strings, with the `^[text](inflect:true)` syntax.

For details about Markdown syntax support in SwiftUI, see [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)).

### Applying a custom text formatting definition

Use the [attributedTextFormattingDefinition(_:)](/documentation/swiftui/view/attributedtextformattingdefinition(_:)-81jn6) modifier to apply a custom [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition) to text created using this initializer. This will result in the text only applying attributes in the definition’s attribute scope and constraining attributes according to the definition’s value constraints prior to display.

Custom attributes listed in the definition’s [Scope](/documentation/swiftui/attributedtextformattingdefinition/scope), where the [Value](/documentation/Foundation/AttributedStringKey/Value) conforms to the [Text Attribute](/documentation/swiftui/textattribute) protocol, can be read when observing the text’s layout using `Text/Layout/Run/subscript(key:)->T?`, just as text attributes applied using the [customAttribute(_:)](/documentation/swiftui/text/customattribute(_:)) modifier.

## Creating a text view

- [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:))
- [init(verbatim:)](/documentation/swiftui/text/init(verbatim:))
- [init(_:style:)](/documentation/swiftui/text/init(_:style:))
- [init(_:format:)](/documentation/swiftui/text/init(_:format:))
- [init(_:formatter:)](/documentation/swiftui/text/init(_:formatter:))
- [init(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/text/init(timerinterval:pausetime:countsdown:showshours:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
