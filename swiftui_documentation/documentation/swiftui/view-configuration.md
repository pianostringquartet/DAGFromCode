---
title: View configuration
description: Adjust the characteristics of views in a hierarchy.
source: https://developer.apple.com/documentation/swiftui/view-configuration
timestamp: 2025-10-29T00:11:04.365Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# View configuration

> Adjust the characteristics of views in a hierarchy.

## Overview

SwiftUI enables you to tune the appearance and behavior of views using view modifiers.



Many modifiers apply to specific kinds of views or behaviors, but some apply more generally. For example, you can conditionally hide any view by dynamically setting its opacity, display contextual help when people hover over a view, or request the light or dark appearance for a view.

## Hiding views

- [opacity(_:)](/documentation/swiftui/view/opacity(_:)) Sets the transparency of this view.
- [hidden()](/documentation/swiftui/view/hidden()) Hides this view unconditionally.

## Hiding system elements

- [labelsHidden()](/documentation/swiftui/view/labelshidden()) Hides the labels of any controls contained within this view.
- [labelsVisibility(_:)](/documentation/swiftui/view/labelsvisibility(_:)) Controls the visibility of labels of any controls contained within this view.
- [labelsVisibility](/documentation/swiftui/environmentvalues/labelsvisibility) The labels visibility set by .
- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:)) Sets the menu indicator visibility for controls within this view.
- [statusBarHidden(_:)](/documentation/swiftui/view/statusbarhidden(_:)) Sets the visibility of the status bar.
- [persistentSystemOverlays(_:)](/documentation/swiftui/view/persistentsystemoverlays(_:)) Sets the preferred visibility of the non-transient system views overlaying the app.
- [Visibility](/documentation/swiftui/visibility) The visibility of a UI element, chosen automatically based on the platform, current context, and other factors.

## Managing view interaction

- [disabled(_:)](/documentation/swiftui/view/disabled(_:)) Adds a condition that controls whether users can interact with this view.
- [isEnabled](/documentation/swiftui/environmentvalues/isenabled) A Boolean value that indicates whether the view associated with this environment allows user interaction.
- [interactionActivityTrackingTag(_:)](/documentation/swiftui/view/interactionactivitytrackingtag(_:)) Sets a tag that you use for tracking interactivity.
- [invalidatableContent(_:)](/documentation/swiftui/view/invalidatablecontent(_:)) Mark the receiver as their content might be invalidated.

## Providing contextual help

- [help(_:)](/documentation/swiftui/view/help(_:)) Adds help text to a view using a text view that you provide.

## Detecting and requesting the light or dark appearance

- [preferredColorScheme(_:)](/documentation/swiftui/view/preferredcolorscheme(_:)) Sets the preferred color scheme for this presentation.
- [colorScheme](/documentation/swiftui/environmentvalues/colorscheme) The color scheme of this environment.
- [ColorScheme](/documentation/swiftui/colorscheme) The possible color schemes, corresponding to the light and dark appearances.

## Getting the color scheme contrast

- [colorSchemeContrast](/documentation/swiftui/environmentvalues/colorschemecontrast) The contrast associated with the color scheme of this environment.
- [ColorSchemeContrast](/documentation/swiftui/colorschemecontrast) The contrast between the app’s foreground and background colors.

## Configuring passthrough

- [preferredSurroundingsEffect(_:)](/documentation/swiftui/view/preferredsurroundingseffect(_:)) Applies an effect to passthrough video.
- [SurroundingsEffect](/documentation/swiftui/surroundingseffect) Effects that the system can apply to passthrough video.
- [BreakthroughEffect](/documentation/swiftui/breakthrougheffect)

## Redacting private content

- [Designing your app for the Always On state](/documentation/watchOS-Apps/designing-your-app-for-the-always-on-state) Customize your watchOS app’s user interface for continuous display.
- [privacySensitive(_:)](/documentation/swiftui/view/privacysensitive(_:)) Marks the view as containing sensitive, private user data.
- [redacted(reason:)](/documentation/swiftui/view/redacted(reason:)) Adds a reason to apply a redaction to this view hierarchy.
- [unredacted()](/documentation/swiftui/view/unredacted()) Removes any reason to apply a redaction to this view hierarchy.
- [redactionReasons](/documentation/swiftui/environmentvalues/redactionreasons) The current redaction reasons applied to the view hierarchy.
- [isSceneCaptured](/documentation/swiftui/environmentvalues/isscenecaptured) The current capture state.
- [RedactionReasons](/documentation/swiftui/redactionreasons) The reasons to apply a redaction to data displayed on screen.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View styles](/documentation/swiftui/view-styles)
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
