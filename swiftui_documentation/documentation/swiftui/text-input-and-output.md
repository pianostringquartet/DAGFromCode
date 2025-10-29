---
title: Text input and output
description: Display formatted text and get text input from the user.
source: https://developer.apple.com/documentation/swiftui/text-input-and-output
timestamp: 2025-10-29T00:10:36.280Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Text input and output

> Display formatted text and get text input from the user.

## Overview

To display read-only text, or read-only text paired with an image, use the built-in [Text](/documentation/swiftui/text) or [Label](/documentation/swiftui/label) views, respectively. When you need to collect text input from the user, use an appropriate text input view, like [Text Field](/documentation/swiftui/textfield) or [Text Editor](/documentation/swiftui/texteditor).



You add view modifiers to control the text’s font, selectability, alignment, layout direction, and so on. These modifiers also affect other views that display text, like the labels on controls, even if you don’t define an explicit [Text](/documentation/swiftui/text) view.

For design guidance, see [typography](/design/Human-Interface-Guidelines/typography) in the Human Interface Guidelines.

## Displaying text

- [Text](/documentation/swiftui/text) A view that displays one or more lines of read-only text.
- [Label](/documentation/swiftui/label) A standard label for user interface items, consisting of an icon with a title.
- [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:)) Sets the style for labels within this view.

## Getting text input

- [Building rich SwiftUI text experiences](/documentation/swiftui/building-rich-swiftui-text-experiences) Build an editor for formatted text using SwiftUI text editor views and attributed strings.
- [TextField](/documentation/swiftui/textfield) A control that displays an editable text interface.
- [textFieldStyle(_:)](/documentation/swiftui/view/textfieldstyle(_:)) Sets the style for text fields within this view.
- [SecureField](/documentation/swiftui/securefield) A control into which people securely enter private text.
- [TextEditor](/documentation/swiftui/texteditor) A view that can display and edit long-form text.

## Selecting text

- [textSelection(_:)](/documentation/swiftui/view/textselection(_:)) Controls whether people can select text within this view.
- [TextSelectability](/documentation/swiftui/textselectability) A type that describes the ability to select text.
- [TextSelection](/documentation/swiftui/textselection) Represents a selection of text.
- [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:)) Sets the direction of a selection or cursor relative to a text character.
- [textSelectionAffinity](/documentation/swiftui/environmentvalues/textselectionaffinity) A representation of the direction or association of a selection or cursor relative to a text character. This concept becomes much more prominent when dealing with bidirectional text (text that contains both LTR and RTL scripts, like English and Arabic combined).
- [TextSelectionAffinity](/documentation/swiftui/textselectionaffinity) A representation of the direction or association of a selection or cursor relative to a text character. This concept becomes much more prominent when dealing with bidirectional text (text that contains both LTR and RTL scripts, like English and Arabic combined).
- [AttributedTextSelection](/documentation/swiftui/attributedtextselection) Represents a selection of attributed text.

## Setting a font

- [Applying custom fonts to text](/documentation/swiftui/applying-custom-fonts-to-text) Add and use a font in your app that scales with Dynamic Type.
- [font(_:)](/documentation/swiftui/view/font(_:)) Sets the default font for text in this view.
- [fontDesign(_:)](/documentation/swiftui/view/fontdesign(_:)) Sets the font design of the text in this view.
- [fontWeight(_:)](/documentation/swiftui/view/fontweight(_:)) Sets the font weight of the text in this view.
- [fontWidth(_:)](/documentation/swiftui/view/fontwidth(_:)) Sets the font width of the text in this view.
- [font](/documentation/swiftui/environmentvalues/font) The default font of this environment.
- [Font](/documentation/swiftui/font) An environment-dependent font.

## Adjusting text size

- [textScale(_:isEnabled:)](/documentation/swiftui/view/textscale(_:isenabled:)) Applies a text scale to text in the view.
- [dynamicTypeSize(_:)](/documentation/swiftui/view/dynamictypesize(_:)) Sets the Dynamic Type size within the view to the given value.
- [dynamicTypeSize](/documentation/swiftui/environmentvalues/dynamictypesize) The current Dynamic Type size.
- [DynamicTypeSize](/documentation/swiftui/dynamictypesize) A Dynamic Type size, which specifies how large scalable content should be.
- [ScaledMetric](/documentation/swiftui/scaledmetric) A dynamic property that scales a numeric value.
- [TextVariantPreference](/documentation/swiftui/textvariantpreference) A protocol for controlling the size variant of text views.
- [FixedTextVariant](/documentation/swiftui/fixedtextvariant) The default text variant preference that chooses the largest available variant.
- [SizeDependentTextVariant](/documentation/swiftui/sizedependenttextvariant) The size dependent variant preference allows the text to take the available space into account when choosing the variant to display.

## Controlling text style

- [bold(_:)](/documentation/swiftui/view/bold(_:)) Applies a bold font weight to the text in this view.
- [italic(_:)](/documentation/swiftui/view/italic(_:)) Applies italics to the text in this view.
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:)) Applies an underline to the text in this view.
- [strikethrough(_:pattern:color:)](/documentation/swiftui/view/strikethrough(_:pattern:color:)) Applies a strikethrough to the text in this view.
- [textCase(_:)](/documentation/swiftui/view/textcase(_:)) Sets a transform for the case of the text contained in this view when displayed.
- [textCase](/documentation/swiftui/environmentvalues/textcase) A stylistic override to transform the case of  when displayed, using the environment’s locale.
- [monospaced(_:)](/documentation/swiftui/view/monospaced(_:)) Modifies the fonts of all child views to use the fixed-width variant of the current font, if possible.
- [monospacedDigit()](/documentation/swiftui/view/monospaceddigit()) Modifies the fonts of all child views to use fixed-width digits, if possible, while leaving other characters proportionally spaced.
- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition) A protocol for defining how text can be styled in a view.
- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint) A protocol for defining a constraint on the value of a certain attribute.
- [AttributedTextFormatting](/documentation/swiftui/attributedtextformatting) A namespace for types related to attributed text formatting definitions.

## Managing text layout

- [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:)) Sets the truncation mode for lines of text that are too long to fit in the available space.
- [truncationMode](/documentation/swiftui/environmentvalues/truncationmode) A value that indicates how the layout truncates the last line of text to fit into the available space.
- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:)) Sets whether text in this view can compress the space between characters when necessary to fit text in a line.
- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening) A Boolean value that indicates whether inter-character spacing should tighten to fit the text into the available space.
- [minimumScaleFactor(_:)](/documentation/swiftui/view/minimumscalefactor(_:)) Sets the minimum amount that text in this view scales down to fit in the available space.
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor) The minimum permissible proportion to shrink the font size to fit the text into the available space.
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:)) Sets the vertical offset for the text relative to its baseline in this view.
- [kerning(_:)](/documentation/swiftui/view/kerning(_:)) Sets the spacing, or kerning, between characters for the text in this view.
- [tracking(_:)](/documentation/swiftui/view/tracking(_:)) Sets the tracking for the text in this view.
- [flipsForRightToLeftLayoutDirection(_:)](/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:)) Sets whether this view mirrors its contents horizontally when the layout direction is right-to-left.
- [TextAlignment](/documentation/swiftui/textalignment) An alignment position for text along the horizontal axis.

## Rendering text

- [Creating visual effects with SwiftUI](/documentation/swiftui/creating-visual-effects-with-swiftui) Add scroll effects, rich color treatments, custom transitions, and advanced effects using shaders and a text renderer.
- [TextAttribute](/documentation/swiftui/textattribute) A value that you can attach to text views and that text renderers can query.
- [textRenderer(_:)](/documentation/swiftui/view/textrenderer(_:)) Returns a new view such that any text views within it will use  to draw themselves.
- [TextRenderer](/documentation/swiftui/textrenderer) A value that can replace the default text view rendering behavior.
- [TextProxy](/documentation/swiftui/textproxy) A proxy for a text view that custom text renderers use.

## Limiting line count for multiline text

- [lineLimit(_:)](/documentation/swiftui/view/linelimit(_:)) Sets to a closed range the number of lines that text can occupy in this view.
- [lineLimit(_:reservesSpace:)](/documentation/swiftui/view/linelimit(_:reservesspace:)) Sets a limit for the number of lines text can occupy in this view.
- [lineLimit](/documentation/swiftui/environmentvalues/linelimit) The maximum number of lines that text can occupy in a view.

## Formatting multiline text

- [lineSpacing(_:)](/documentation/swiftui/view/linespacing(_:)) Sets the amount of space between lines of text in this view.
- [lineSpacing](/documentation/swiftui/environmentvalues/linespacing) The distance in points between the bottom of one line fragment and the top of the next.
- [multilineTextAlignment(_:)](/documentation/swiftui/view/multilinetextalignment(_:)) Sets the alignment of a text view that contains multiple lines of text.
- [multilineTextAlignment](/documentation/swiftui/environmentvalues/multilinetextalignment) An environment value that indicates how a text view aligns its lines when the content wraps or contains newlines.

## Formatting date and time

- [SystemFormatStyle](/documentation/swiftui/systemformatstyle) A namespace for format styles that implement designs used across Apple’s platformes.
- [TimeDataSource](/documentation/swiftui/timedatasource) A source of time related data.

## Managing text entry

- [autocorrectionDisabled(_:)](/documentation/swiftui/view/autocorrectiondisabled(_:)) Sets whether to disable autocorrection for this view.
- [autocorrectionDisabled](/documentation/swiftui/environmentvalues/autocorrectiondisabled) A Boolean value that determines whether the view hierarchy has auto-correction enabled.
- [keyboardType(_:)](/documentation/swiftui/view/keyboardtype(_:)) Sets the keyboard type for this view.
- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:)) Configures the behavior in which scrollable content interacts with the software keyboard.
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)) Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on macOS.
- [textInputAutocapitalization(_:)](/documentation/swiftui/view/textinputautocapitalization(_:)) Sets how often the shift key in the keyboard is automatically enabled.
- [TextInputAutocapitalization](/documentation/swiftui/textinputautocapitalization) The kind of autocapitalization behavior applied during text input.
- [textInputCompletion(_:)](/documentation/swiftui/view/textinputcompletion(_:)) Associates a fully formed string with the value of this view when used as a text input suggestion
- [textInputSuggestions(_:)](/documentation/swiftui/view/textinputsuggestions(_:)) Configures the text input suggestions for this view.
- [textInputSuggestions(_:content:)](/documentation/swiftui/view/textinputsuggestions(_:content:)) Configures the text input suggestions for this view.
- [textInputSuggestions(_:id:content:)](/documentation/swiftui/view/textinputsuggestions(_:id:content:)) Configures the text input suggestions for this view.
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-4dqqb) Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on a watchOS device.
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-6fic1) Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on macOS.
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-ufdv) Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on an iOS or tvOS device.
- [TextInputFormattingControlPlacement](/documentation/swiftui/textinputformattingcontrolplacement) A structure defining the system text formatting controls available on each platform.

## Dictating text

- [searchDictationBehavior(_:)](/documentation/swiftui/view/searchdictationbehavior(_:)) Configures the dictation behavior for any search fields configured by the searchable modifier.
- [TextInputDictationActivation](/documentation/swiftui/textinputdictationactivation)
- [TextInputDictationBehavior](/documentation/swiftui/textinputdictationbehavior)

## Configuring the Writing Tools behavior

- [writingToolsBehavior(_:)](/documentation/swiftui/view/writingtoolsbehavior(_:)) Specifies the Writing Tools behavior for text and text input in the environment.
- [WritingToolsBehavior](/documentation/swiftui/writingtoolsbehavior) The Writing Tools editing experience for text and text input.

## Specifying text equivalents

- [typeSelectEquivalent(_:)](/documentation/swiftui/view/typeselectequivalent(_:)) Sets an explicit type select equivalent text in a collection, such as a list or table.

## Localizing text

- [Preparing views for localization](/documentation/swiftui/preparing-views-for-localization) Specify hints and add strings to localize your SwiftUI views.
- [LocalizedStringKey](/documentation/swiftui/localizedstringkey) The key used to look up an entry in a strings file or strings dictionary file.
- [locale](/documentation/swiftui/environmentvalues/locale) The current locale that views should use.
- [typesettingLanguage(_:isEnabled:)](/documentation/swiftui/view/typesettinglanguage(_:isenabled:)) Specifies the language for typesetting.
- [TypesettingLanguage](/documentation/swiftui/typesettinglanguage) Defines how typesetting language is determined for text.

## Deprecated types

- [ContentSizeCategory](/documentation/swiftui/contentsizecategory) The sizes that you can specify for content.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [View styles](/documentation/swiftui/view-styles)
- [Animations](/documentation/swiftui/animations)
- [Images](/documentation/swiftui/images)
- [Controls and indicators](/documentation/swiftui/controls-and-indicators)
- [Menus and commands](/documentation/swiftui/menus-and-commands)
- [Shapes](/documentation/swiftui/shapes)
- [Drawing and graphics](/documentation/swiftui/drawing-and-graphics)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
