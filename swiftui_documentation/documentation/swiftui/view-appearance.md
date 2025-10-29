---
title: Appearance modifiers
description: Configure a view’s foreground and background styles, controls, and visibility.
source: https://developer.apple.com/documentation/swiftui/view-appearance
timestamp: 2025-10-29T00:11:22.182Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Appearance modifiers

> Configure a view’s foreground and background styles, controls, and visibility.

## Overview

Use these modifiers to configure the appearance of a view, including the use of color and tint, and the application of overlays and background elements. Control the visibility of a view and specific elements within a view. Manage the shape and size of various controls.

For information about configuring views, see [View](/documentation/swiftui/view-configuration).

## Colors and patterns

- [backgroundStyle(_:)](/documentation/swiftui/view/backgroundstyle(_:)) Sets the specified style to render backgrounds within the view.
- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:)) Sets a view’s foreground elements to use a given style.
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:)) Sets the primary and secondary levels of the foreground style in the child view.
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:)) Sets the primary, secondary, and tertiary levels of the foreground style.
- [allowedDynamicRange(_:)](/documentation/swiftui/view/alloweddynamicrange(_:)) Returns a new view configured with the specified allowed dynamic range.

## Tint

- [tint(_:)](/documentation/swiftui/view/tint(_:)) Sets the tint color within this view.
- [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:)) Sets the tint color associated with a row.
- [listSectionSeparatorTint(_:edges:)](/documentation/swiftui/view/listsectionseparatortint(_:edges:)) Sets the tint color associated with a section.
- [listItemTint(_:)](/documentation/swiftui/view/listitemtint(_:)) Sets a fixed tint color for content in a list.

## Light and dark appearance

- [preferredColorScheme(_:)](/documentation/swiftui/view/preferredcolorscheme(_:)) Sets the preferred color scheme for this presentation.
- [preferredSurroundingsEffect(_:)](/documentation/swiftui/view/preferredsurroundingseffect(_:)) Applies an effect to passthrough video.

## Foreground elements

- [border(_:width:)](/documentation/swiftui/view/border(_:width:)) Adds a border to this view with the specified style and width.
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) Layers the views that you specify in front of this view.
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:)) Layers the specified style in front of this view.
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:)) Layers a shape that you specify in front of this view.

## Background elements

- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)) Layers the views that you specify behind this view.
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)) Sets the view’s background to a style.
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:)) Sets the view’s background to the default background style.
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)) Sets the view’s background to an insettable shape filled with a style.
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:)) Sets the view’s background to an insettable shape filled with the default background style.
- [alternatingRowBackgrounds(_:)](/documentation/swiftui/view/alternatingrowbackgrounds(_:)) Overrides whether lists and tables in this view have alternating row backgrounds.
- [listRowBackground(_:)](/documentation/swiftui/view/listrowbackground(_:)) Places a custom background view behind a list row item.
- [scrollContentBackground(_:)](/documentation/swiftui/view/scrollcontentbackground(_:)) Specifies the visibility of the background for scrollable views within this view.
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:)) Sets the container background of the enclosing container using a view.
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:)) Sets the container background of the enclosing container using a view.
- [glassBackgroundEffect(displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(displaymode:)) Fills the view’s background with an automatic glass background effect and container-relative rounded rectangle shape.
- [glassBackgroundEffect(in:displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(in:displaymode:)) Fills the view’s background with an automatic glass background effect and a shape that you specify.

## Control configuration

- [defaultWheelPickerItemHeight(_:)](/documentation/swiftui/view/defaultwheelpickeritemheight(_:)) Sets the default wheel-style picker item height.
- [horizontalRadioGroupLayout()](/documentation/swiftui/view/horizontalradiogrouplayout()) Sets the style for radio group style pickers within this view to be horizontally positioned with the radio buttons inside the layout.
- [controlSize(_:)](/documentation/swiftui/view/controlsize(_:)) Sets the size for controls within this view.
- [buttonBorderShape(_:)](/documentation/swiftui/view/buttonbordershape(_:)) Sets the border shape for buttons in this view.
- [buttonRepeatBehavior(_:)](/documentation/swiftui/view/buttonrepeatbehavior(_:)) Sets whether buttons in this view should repeatedly trigger their actions on prolonged interactions.
- [headerProminence(_:)](/documentation/swiftui/view/headerprominence(_:)) Sets the header prominence for this view.
- [scrollDisabled(_:)](/documentation/swiftui/view/scrolldisabled(_:)) Disables or enables scrolling in scrollable views.
- [scrollBounceBehavior(_:axes:)](/documentation/swiftui/view/scrollbouncebehavior(_:axes:)) Configures the bounce behavior of scrollable views along the specified axis.
- [scrollIndicatorsFlash(onAppear:)](/documentation/swiftui/view/scrollindicatorsflash(onappear:)) Flashes the scroll indicators of a scrollable view when it appears.
- [scrollIndicatorsFlash(trigger:)](/documentation/swiftui/view/scrollindicatorsflash(trigger:)) Flashes the scroll indicators of scrollable views when a value changes.
- [menuOrder(_:)](/documentation/swiftui/view/menuorder(_:)) Sets the preferred order of items for menus presented from this view.
- [menuActionDismissBehavior(_:)](/documentation/swiftui/view/menuactiondismissbehavior(_:)) Tells a menu whether to dismiss after performing an action.
- [paletteSelectionEffect(_:)](/documentation/swiftui/view/paletteselectioneffect(_:)) Specifies the selection effect to apply to a palette item.
- [typeSelectEquivalent(_:)](/documentation/swiftui/view/typeselectequivalent(_:)) Sets an explicit type select equivalent text in a collection, such as a list or table.

## Symbol effects

- [symbolEffect(_:options:isActive:)](/documentation/swiftui/view/symboleffect(_:options:isactive:)) Returns a new view with a symbol effect added to it.
- [symbolEffect(_:options:value:)](/documentation/swiftui/view/symboleffect(_:options:value:)) Returns a new view with a symbol effect added to it.
- [symbolEffectsRemoved(_:)](/documentation/swiftui/view/symboleffectsremoved(_:)) Returns a new view with its inherited symbol image effects either removed or left unchanged.

## Privacy and redaction

- [privacySensitive(_:)](/documentation/swiftui/view/privacysensitive(_:)) Marks the view as containing sensitive, private user data.
- [redacted(reason:)](/documentation/swiftui/view/redacted(reason:)) Adds a reason to apply a redaction to this view hierarchy.
- [unredacted()](/documentation/swiftui/view/unredacted()) Removes any reason to apply a redaction to this view hierarchy.
- [invalidatableContent(_:)](/documentation/swiftui/view/invalidatablecontent(_:)) Mark the receiver as their content might be invalidated.

## Visibility

- [hidden()](/documentation/swiftui/view/hidden()) Hides this view unconditionally.
- [labelsHidden()](/documentation/swiftui/view/labelshidden()) Hides the labels of any controls contained within this view.
- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:)) Sets the menu indicator visibility for controls within this view.
- [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:)) Sets the display mode for the separator associated with this specific row.
- [listSectionSeparator(_:edges:)](/documentation/swiftui/view/listsectionseparator(_:edges:)) Sets whether to hide the separator associated with a list section.
- [persistentSystemOverlays(_:)](/documentation/swiftui/view/persistentsystemoverlays(_:)) Sets the preferred visibility of the non-transient system views overlaying the app.
- [scrollIndicators(_:axes:)](/documentation/swiftui/view/scrollindicators(_:axes:)) Sets the visibility of scroll indicators within this view.
- [scrollClipDisabled(_:)](/documentation/swiftui/view/scrollclipdisabled(_:)) Sets whether a scroll view clips its content to its bounds.
- [tableColumnHeaders(_:)](/documentation/swiftui/view/tablecolumnheaders(_:)) Controls the visibility of a ’s column header views.
- [upperLimbVisibility(_:)](/documentation/swiftui/view/upperlimbvisibility(_:)) Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.
- [volumeBaseplateVisibility(_:)](/documentation/swiftui/view/volumebaseplatevisibility(_:)) Sets the visibility of the baseplate of a volume, which appears when a user looks towards the ‘floor’ of a volume and during resize. Both  and  will show the baseplate.  will never show it.

## Sensory feedback

- [sensoryFeedback(_:trigger:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:)) Plays the specified  when the provided  value changes.
- [sensoryFeedback(trigger:_:)](/documentation/swiftui/view/sensoryfeedback(trigger:_:)) Plays feedback when returned from the  closure after the provided  value changes.
- [sensoryFeedback(_:trigger:condition:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:condition:)) Plays the specified  when the provided  value changes and the  closure returns .

## Widget configuration

- [widgetAccentable(_:)](/documentation/swiftui/view/widgetaccentable(_:)) Adds the view and all of its subviews to the accented group.
- [widgetCurvesContent(_:)](/documentation/swiftui/view/widgetcurvescontent(_:)) Displays the widget’s content along a curve if the context allows it.
- [widgetLabel(_:)](/documentation/swiftui/view/widgetlabel(_:)) Returns a localized text label that displays additional content outside the accessory family widget’s main SwiftUI view.
- [widgetLabel(label:)](/documentation/swiftui/view/widgetlabel(label:)) Creates a label for displaying additional content outside an accessory family widget’s main SwiftUI view.
- [dynamicIsland(verticalPlacement:)](/documentation/swiftui/view/dynamicisland(verticalplacement:)) Specifies the vertical placement for a view of an expanded Live Activity that appears in the Dynamic Island.

## Window behaviors

- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:)) Configures the dismiss functionality for the window enclosing .
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:)) Configures the full screen functionality for the window enclosing .
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:)) Configures the minimize functionality for the window enclosing .
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:)) Configures the resize functionality for the window enclosing .

## Configuring view elements

- [Accessibility modifiers](/documentation/swiftui/view-accessibility)
- [Text and symbol modifiers](/documentation/swiftui/view-text-and-symbols)
- [Auxiliary view modifiers](/documentation/swiftui/view-auxiliary-views)
- [Chart view modifiers](/documentation/swiftui/view-chart-view)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
