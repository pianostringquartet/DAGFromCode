---
title: Text and symbol modifiers
description: Manage the rendering, selection, and entry of text in your view.
source: https://developer.apple.com/documentation/swiftui/view-text-and-symbols
timestamp: 2025-10-29T00:09:36.025Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Text and symbol modifiers

> Manage the rendering, selection, and entry of text in your view.

## Overview

SwiftUI provides built-in views that display text to the user, like [Text](/documentation/swiftui/text) and [Label](/documentation/swiftui/label), or that collect text from the user, like [Text Field](/documentation/swiftui/textfield) and [Text Editor](/documentation/swiftui/texteditor). Use text and symbol modifiers to control how SwiftUI displays and manages that text. For example, you can set a font, specify text layout parameters, and indicate what kind of input to expect.

To learn more about the kinds of views that you use to display text and the ways in which you can configure those views, see [Text-input-and](/documentation/swiftui/text-input-and-output).

## Fonts

- [font(_:)](/documentation/swiftui/view/font(_:)) Sets the default font for text in this view.

## Dynamic type

- [dynamicTypeSize(_:)](/documentation/swiftui/view/dynamictypesize(_:)) Sets the Dynamic Type size within the view to the given value.

## Text style

- [bold(_:)](/documentation/swiftui/view/bold(_:)) Applies a bold font weight to the text in this view.
- [fontDesign(_:)](/documentation/swiftui/view/fontdesign(_:)) Sets the font design of the text in this view.
- [fontWeight(_:)](/documentation/swiftui/view/fontweight(_:)) Sets the font weight of the text in this view.
- [fontWidth(_:)](/documentation/swiftui/view/fontwidth(_:)) Sets the font width of the text in this view.
- [italic(_:)](/documentation/swiftui/view/italic(_:)) Applies italics to the text in this view.
- [monospaced(_:)](/documentation/swiftui/view/monospaced(_:)) Modifies the fonts of all child views to use the fixed-width variant of the current font, if possible.
- [monospacedDigit()](/documentation/swiftui/view/monospaceddigit()) Modifies the fonts of all child views to use fixed-width digits, if possible, while leaving other characters proportionally spaced.
- [strikethrough(_:pattern:color:)](/documentation/swiftui/view/strikethrough(_:pattern:color:)) Applies a strikethrough to the text in this view.
- [textCase(_:)](/documentation/swiftui/view/textcase(_:)) Sets a transform for the case of the text contained in this view when displayed.
- [textScale(_:isEnabled:)](/documentation/swiftui/view/textscale(_:isenabled:)) Applies a text scale to text in the view.
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:)) Applies an underline to the text in this view.

## Text layout

- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:)) Sets whether text in this view can compress the space between characters when necessary to fit text in a line.
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:)) Sets the vertical offset for the text relative to its baseline in this view.
- [flipsForRightToLeftLayoutDirection(_:)](/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:)) Sets whether this view mirrors its contents horizontally when the layout direction is right-to-left.
- [kerning(_:)](/documentation/swiftui/view/kerning(_:)) Sets the spacing, or kerning, between characters for the text in this view.
- [minimumScaleFactor(_:)](/documentation/swiftui/view/minimumscalefactor(_:)) Sets the minimum amount that text in this view scales down to fit in the available space.
- [tracking(_:)](/documentation/swiftui/view/tracking(_:)) Sets the tracking for the text in this view.
- [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:)) Sets the truncation mode for lines of text that are too long to fit in the available space.
- [typesettingLanguage(_:isEnabled:)](/documentation/swiftui/view/typesettinglanguage(_:isenabled:)) Specifies the language for typesetting.

## Multiline text

- [lineLimit(_:)](/documentation/swiftui/view/linelimit(_:)) Sets to a closed range the number of lines that text can occupy in this view.
- [lineLimit(_:reservesSpace:)](/documentation/swiftui/view/linelimit(_:reservesspace:)) Sets a limit for the number of lines text can occupy in this view.
- [lineSpacing(_:)](/documentation/swiftui/view/linespacing(_:)) Sets the amount of space between lines of text in this view.
- [multilineTextAlignment(_:)](/documentation/swiftui/view/multilinetextalignment(_:)) Sets the alignment of a text view that contains multiple lines of text.

## Text selection

- [textSelection(_:)](/documentation/swiftui/view/textselection(_:)) Controls whether people can select text within this view.

## Text entry

- [autocorrectionDisabled(_:)](/documentation/swiftui/view/autocorrectiondisabled(_:)) Sets whether to disable autocorrection for this view.
- [keyboardType(_:)](/documentation/swiftui/view/keyboardtype(_:)) Sets the keyboard type for this view.
- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:)) Configures the behavior in which scrollable content interacts with the software keyboard.
- [textInputAutocapitalization(_:)](/documentation/swiftui/view/textinputautocapitalization(_:)) Sets how often the shift key in the keyboard is automatically enabled.
- [textInputCompletion(_:)](/documentation/swiftui/view/textinputcompletion(_:)) Associates a fully formed string with the value of this view when used as a text input suggestion
- [textInputSuggestions(_:)](/documentation/swiftui/view/textinputsuggestions(_:)) Configures the text input suggestions for this view.
- [textInputSuggestions(_:content:)](/documentation/swiftui/view/textinputsuggestions(_:content:)) Configures the text input suggestions for this view.
- [textInputSuggestions(_:id:content:)](/documentation/swiftui/view/textinputsuggestions(_:id:content:)) Configures the text input suggestions for this view.
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-4dqqb) Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on a watchOS device.
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-6fic1) Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on macOS.
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-ufdv) Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on an iOS or tvOS device.

## Find and replace

- [findNavigator(isPresented:)](/documentation/swiftui/view/findnavigator(ispresented:)) Programmatically presents the find and replace interface for text editor views.
- [findDisabled(_:)](/documentation/swiftui/view/finddisabled(_:)) Prevents find and replace operations in a text editor.
- [replaceDisabled(_:)](/documentation/swiftui/view/replacedisabled(_:)) Prevents replace operations in a text editor.

## Symbol appearance

- [symbolRenderingMode(_:)](/documentation/swiftui/view/symbolrenderingmode(_:)) Sets the rendering mode for symbol images within this view.
- [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:)) Makes symbols within the view show a particular variant.

## Configuring view elements

- [Accessibility modifiers](/documentation/swiftui/view-accessibility)
- [Appearance modifiers](/documentation/swiftui/view-appearance)
- [Auxiliary view modifiers](/documentation/swiftui/view-auxiliary-views)
- [Chart view modifiers](/documentation/swiftui/view-chart-view)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
