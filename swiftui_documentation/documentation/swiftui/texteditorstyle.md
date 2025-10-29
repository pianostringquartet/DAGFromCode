---
title: TextEditorStyle
description: A specification for the appearance and interaction of a text editor.
source: https://developer.apple.com/documentation/swiftui/texteditorstyle
timestamp: 2025-10-29T00:14:43.075Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TextEditorStyle

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A specification for the appearance and interaction of a text editor.

```swift
@MainActor @preconcurrency protocol TextEditorStyle
```

## Overview

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [AutomaticTextEditorStyle](/documentation/swiftui/automatictexteditorstyle)
- [PlainTextEditorStyle](/documentation/swiftui/plaintexteditorstyle)
- [RoundedBorderTextEditorStyle](/documentation/swiftui/roundedbordertexteditorstyle)

## Getting built-in styles

- [automatic](/documentation/swiftui/texteditorstyle/automatic) The default text editor style, based on the text editor’s context.
- [plain](/documentation/swiftui/texteditorstyle/plain) A text editor style with no decoration.
- [roundedBorder](/documentation/swiftui/texteditorstyle/roundedborder) A text editor style with a system-defined rounded border.

## Creating custom styles

- [makeBody(configuration:)](/documentation/swiftui/texteditorstyle/makebody(configuration:)) Creates a view that represents the body of a text editor.
- [TextEditorStyle.Configuration](/documentation/swiftui/texteditorstyle/configuration) The properties of a text editor.
- [Body](/documentation/swiftui/texteditorstyle/body) A view that represents the body of a text editor.

## Supporting types

- [AutomaticTextEditorStyle](/documentation/swiftui/automatictexteditorstyle) The default text editor style, based on the text editor’s context.
- [PlainTextEditorStyle](/documentation/swiftui/plaintexteditorstyle) A text editor style with no decoration.
- [RoundedBorderTextEditorStyle](/documentation/swiftui/roundedbordertexteditorstyle) A text editor style with a system-defined rounded border.

## Styling views that display text

- [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:))
- [LabelStyle](/documentation/swiftui/labelstyle)
- [LabelStyleConfiguration](/documentation/swiftui/labelstyleconfiguration)
- [textFieldStyle(_:)](/documentation/swiftui/view/textfieldstyle(_:))
- [TextFieldStyle](/documentation/swiftui/textfieldstyle)
- [textEditorStyle(_:)](/documentation/swiftui/view/texteditorstyle(_:))
- [TextEditorStyleConfiguration](/documentation/swiftui/texteditorstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
