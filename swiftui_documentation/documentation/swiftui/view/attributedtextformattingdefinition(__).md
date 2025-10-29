---
title: attributedTextFormattingDefinition(_:)
description: Apply a text formatting definition to nested views.
source: https://developer.apple.com/documentation/swiftui/view/attributedtextformattingdefinition(_:)
timestamp: 2025-10-29T00:13:07.466Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# attributedTextFormattingDefinition(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Apply a text formatting definition to nested views.

```swift
nonisolated func attributedTextFormattingDefinition<D>(_ definition: D) -> some View where D : AttributedTextFormattingDefinition
```

## Discussion

Applying a text formatting definition to a [Text](/documentation/swiftui/text) or [Text Editor](/documentation/swiftui/texteditor) created using the [init(_:)](/documentation/swiftui/text/init(_:)-1a4oh) or [init(text:selection:)](/documentation/swiftui/texteditor/init(text:selection:)) initializer, respectively, makes sure that any content observable to the user adheres to the constraints of the formatting definition.

You can compose your own definition from an attribute scope and a series of [Attributed Text Value Constraint](/documentation/swiftui/attributedtextvalueconstraint)s:

```swift
// MyTextFormattingDefinition.swift

struct MyTextFormattingDefinition: AttributedTextFormattingDefinition {
    var body: some AttributedTextFormattingDefinition<
        AttributeScopes.SwiftUIAttributes
    > {
        ValueConstraint(
            for: \.underlineStyle,
            values: [nil, .single],
            default: .single)
        MyAttributedTextValueConstraint()
    }
}

// MyEditorView.swift

TextEditor(text: $text)
    .attributedTextFormattingDefinition(MyTextFormattingDefinition())
```

> [!NOTE]
> A [Binding](/documentation/swiftui/binding) to the text of a view with an [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition) may still contain values that do not adhere to text formatting definition. E.g., a [Text Editor](/documentation/swiftui/texteditor) may choose to not apply constraints in the text formatting definition to parts of a bound attributed string that are not visible on screen.

To manually enforce constraints, e.g. before serializing text contents, use the [constrain(_:)](/documentation/swiftui/attributedtextformattingdefinition/constrain(_:)-1ur9c) method.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
