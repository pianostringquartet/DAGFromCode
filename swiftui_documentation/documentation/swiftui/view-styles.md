---
title: View styles
description: Apply built-in and custom appearances and behaviors to different types of views.
source: https://developer.apple.com/documentation/swiftui/view-styles
timestamp: 2025-10-29T00:11:46.882Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# View styles

> Apply built-in and custom appearances and behaviors to different types of views.

## Overview

SwiftUI defines built-in styles for certain kinds of views and automatically selects the appropriate style for a particular presentation context. For example, a [Label](/documentation/swiftui/label) might appear as an icon, a string title, or both, depending on factors like the platform, whether the view appears in a toolbar, and so on.



You can override the automatic style by using one of the style view modifiers. These modifiers typically propagate throughout a container view, so that you can wrap a view hierarchy in a style modifier to affect all the views of the given type within the hierarchy.

Any of the style protocols that define a `makeBody(configuration:)` method, like [Toggle Style](/documentation/swiftui/togglestyle), also enable you to define custom styles. Create a type that conforms to the corresponding style protocol and implement its `makeBody(configuration:)` method. Then apply the new style using a style view modifier exactly like a built-in style.

## Styling views with Liquid Glass

- [Applying Liquid Glass to custom views](/documentation/swiftui/applying-liquid-glass-to-custom-views) Configure, combine, and morph views using Liquid Glass effects.
- [Landmarks: Building an app with Liquid Glass](/documentation/swiftui/landmarks-building-an-app-with-liquid-glass) Enhance your app experience with system-provided and custom Liquid Glass.
- [glassEffect(_:in:)](/documentation/swiftui/view/glasseffect(_:in:)) Applies the Liquid Glass effect to a view.
- [interactive(_:)](/documentation/swiftui/glass/interactive(_:)) Returns a copy of the structure configured to be interactive.
- [GlassEffectContainer](/documentation/swiftui/glasseffectcontainer) A view that combines multiple Liquid Glass shapes into a single shape that can morph individual shapes into one another.
- [GlassEffectTransition](/documentation/swiftui/glasseffecttransition) A structure that describes changes to apply when a glass effect is added or removed from the view hierarchy.
- [GlassButtonStyle](/documentation/swiftui/glassbuttonstyle) A button style that applies glass border artwork based on the button’s context.
- [GlassProminentButtonStyle](/documentation/swiftui/glassprominentbuttonstyle) A button style that applies prominent glass border artwork based on the button’s context.
- [DefaultGlassEffectShape](/documentation/swiftui/defaultglasseffectshape) The default shape applied by glass effects, a capsule.

## Styling buttons

- [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)) Sets the style for buttons within this view to a button style with a custom appearance and standard interaction behavior.
- [ButtonStyle](/documentation/swiftui/buttonstyle) A type that applies standard interaction behavior and a custom appearance to all buttons within a view hierarchy.
- [ButtonStyleConfiguration](/documentation/swiftui/buttonstyleconfiguration) The properties of a button.
- [PrimitiveButtonStyle](/documentation/swiftui/primitivebuttonstyle) A type that applies custom interaction behavior and a custom appearance to all buttons within a view hierarchy.
- [PrimitiveButtonStyleConfiguration](/documentation/swiftui/primitivebuttonstyleconfiguration) The properties of a button.
- [signInWithAppleButtonStyle(_:)](/documentation/swiftui/view/signinwithapplebuttonstyle(_:)) Sets the style used for displaying the control (see ).

## Styling pickers

- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) Sets the style for pickers within this view.
- [PickerStyle](/documentation/swiftui/pickerstyle) A type that specifies the appearance and interaction of all pickers within a view hierarchy.
- [datePickerStyle(_:)](/documentation/swiftui/view/datepickerstyle(_:)) Sets the style for date pickers within this view.
- [DatePickerStyle](/documentation/swiftui/datepickerstyle) A type that specifies the appearance and interaction of all date pickers within a view hierarchy.

## Styling menus

- [menuStyle(_:)](/documentation/swiftui/view/menustyle(_:)) Sets the style for menus within this view.
- [MenuStyle](/documentation/swiftui/menustyle) A type that applies standard interaction behavior and a custom appearance to all menus within a view hierarchy.
- [MenuStyleConfiguration](/documentation/swiftui/menustyleconfiguration) A configuration of a menu.

## Styling toggles

- [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) Sets the style for toggles in a view hierarchy.
- [ToggleStyle](/documentation/swiftui/togglestyle) The appearance and behavior of a toggle.
- [ToggleStyleConfiguration](/documentation/swiftui/togglestyleconfiguration) The properties of a toggle instance.

## Styling indicators

- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) Sets the style for gauges within this view.
- [GaugeStyle](/documentation/swiftui/gaugestyle) Defines the implementation of all gauge instances within a view hierarchy.
- [GaugeStyleConfiguration](/documentation/swiftui/gaugestyleconfiguration) The properties of a gauge instance.
- [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:)) Sets the style for progress views in this view.
- [ProgressViewStyle](/documentation/swiftui/progressviewstyle) A type that applies standard interaction behavior to all progress views within a view hierarchy.
- [ProgressViewStyleConfiguration](/documentation/swiftui/progressviewstyleconfiguration) The properties of a progress view instance.

## Styling views that display text

- [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:)) Sets the style for labels within this view.
- [LabelStyle](/documentation/swiftui/labelstyle) A type that applies a custom appearance to all labels within a view.
- [LabelStyleConfiguration](/documentation/swiftui/labelstyleconfiguration) The properties of a label.
- [textFieldStyle(_:)](/documentation/swiftui/view/textfieldstyle(_:)) Sets the style for text fields within this view.
- [TextFieldStyle](/documentation/swiftui/textfieldstyle) A specification for the appearance and interaction of a text field.
- [textEditorStyle(_:)](/documentation/swiftui/view/texteditorstyle(_:)) Sets the style for text editors within this view.
- [TextEditorStyle](/documentation/swiftui/texteditorstyle) A specification for the appearance and interaction of a text editor.
- [TextEditorStyleConfiguration](/documentation/swiftui/texteditorstyleconfiguration) The properties of a text editor.

## Styling collection views

- [listStyle(_:)](/documentation/swiftui/view/liststyle(_:)) Sets the style for lists within this view.
- [ListStyle](/documentation/swiftui/liststyle) A protocol that describes the behavior and appearance of a list.
- [tableStyle(_:)](/documentation/swiftui/view/tablestyle(_:)) Sets the style for tables within this view.
- [TableStyle](/documentation/swiftui/tablestyle) A type that applies a custom appearance to all tables within a view.
- [TableStyleConfiguration](/documentation/swiftui/tablestyleconfiguration) The properties of a table.
- [disclosureGroupStyle(_:)](/documentation/swiftui/view/disclosuregroupstyle(_:)) Sets the style for disclosure groups within this view.
- [DisclosureGroupStyle](/documentation/swiftui/disclosuregroupstyle) A type that specifies the appearance and interaction of disclosure groups within a view hierarchy.

## Styling navigation views

- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:)) Sets the style for navigation split views within this view.
- [NavigationSplitViewStyle](/documentation/swiftui/navigationsplitviewstyle) A type that specifies the appearance and interaction of navigation split views within a view hierarchy.
- [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:)) Sets the style for the tab view within the current environment.
- [TabViewStyle](/documentation/swiftui/tabviewstyle) A specification for the appearance and interaction of a tab view.

## Styling groups

- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:)) Sets the style for control groups within this view.
- [ControlGroupStyle](/documentation/swiftui/controlgroupstyle) Defines the implementation of all control groups within a view hierarchy.
- [ControlGroupStyleConfiguration](/documentation/swiftui/controlgroupstyleconfiguration) The properties of a control group.
- [formStyle(_:)](/documentation/swiftui/view/formstyle(_:)) Sets the style for forms in a view hierarchy.
- [FormStyle](/documentation/swiftui/formstyle) The appearance and behavior of a form.
- [FormStyleConfiguration](/documentation/swiftui/formstyleconfiguration) The properties of a form instance.
- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:)) Sets the style for group boxes within this view.
- [GroupBoxStyle](/documentation/swiftui/groupboxstyle) A type that specifies the appearance and interaction of all group boxes within a view hierarchy.
- [GroupBoxStyleConfiguration](/documentation/swiftui/groupboxstyleconfiguration) The properties of a group box instance.
- [indexViewStyle(_:)](/documentation/swiftui/view/indexviewstyle(_:)) Sets the style for the index view within the current environment.
- [IndexViewStyle](/documentation/swiftui/indexviewstyle) Defines the implementation of all  instances within a view hierarchy.
- [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:)) Sets a style for labeled content.
- [LabeledContentStyle](/documentation/swiftui/labeledcontentstyle) The appearance and behavior of a labeled content instance..
- [LabeledContentStyleConfiguration](/documentation/swiftui/labeledcontentstyleconfiguration) The properties of a labeled content instance.

## Styling windows from a view inside the window

- [presentedWindowStyle(_:)](/documentation/swiftui/view/presentedwindowstyle(_:)) Sets the style for windows created by interacting with this view.
- [presentedWindowToolbarStyle(_:)](/documentation/swiftui/view/presentedwindowtoolbarstyle(_:)) Sets the style for the toolbar in windows created by interacting with this view.

## Adding a glass background on views in visionOS

- [glassBackgroundEffect(displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(displaymode:)) Fills the view’s background with an automatic glass background effect and container-relative rounded rectangle shape.
- [glassBackgroundEffect(in:displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(in:displaymode:)) Fills the view’s background with an automatic glass background effect and a shape that you specify.
- [GlassBackgroundDisplayMode](/documentation/swiftui/glassbackgrounddisplaymode) The display mode of a glass background.
- [GlassBackgroundEffect](/documentation/swiftui/glassbackgroundeffect) A specification for the appearance of a glass background.
- [AutomaticGlassBackgroundEffect](/documentation/swiftui/automaticglassbackgroundeffect) The automatic glass background effect.
- [GlassBackgroundEffectConfiguration](/documentation/swiftui/glassbackgroundeffectconfiguration) A configuration used to build a custom effect.
- [FeatheredGlassBackgroundEffect](/documentation/swiftui/featheredglassbackgroundeffect) The feathered glass background effect.
- [PlateGlassBackgroundEffect](/documentation/swiftui/plateglassbackgroundeffect) The plate glass background effect.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [Animations](/documentation/swiftui/animations)
- [Text input and output](/documentation/swiftui/text-input-and-output)
- [Images](/documentation/swiftui/images)
- [Controls and indicators](/documentation/swiftui/controls-and-indicators)
- [Menus and commands](/documentation/swiftui/menus-and-commands)
- [Shapes](/documentation/swiftui/shapes)
- [Drawing and graphics](/documentation/swiftui/drawing-and-graphics)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
