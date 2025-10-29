---
title: Deprecated modifiers
description: Review unsupported modifiers and their replacements.
source: https://developer.apple.com/documentation/swiftui/view-deprecated
timestamp: 2025-10-29T00:10:23.261Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Deprecated modifiers

> Review unsupported modifiers and their replacements.

## Overview

Avoid using deprecated modifiers in your app. Select a modifier to see the replacement that you should use instead.

## Accessibility modifiers

- [accessibility(label:)](/documentation/swiftui/view/accessibility(label:)) Adds a label to the view that describes its contents.
- [accessibility(value:)](/documentation/swiftui/view/accessibility(value:)) Adds a textual description of the value that the view contains.
- [accessibility(hidden:)](/documentation/swiftui/view/accessibility(hidden:)) Specifies whether to hide this view from system accessibility features.
- [accessibility(identifier:)](/documentation/swiftui/view/accessibility(identifier:)) Uses the specified string to identify the view.
- [accessibility(selectionIdentifier:)](/documentation/swiftui/view/accessibility(selectionidentifier:)) Sets a selection identifier for this view’s accessibility element.
- [accessibility(hint:)](/documentation/swiftui/view/accessibility(hint:)) Communicates to the user what happens after performing the view’s action.
- [accessibility(activationPoint:)](/documentation/swiftui/view/accessibility(activationpoint:)) Specifies the point where activations occur in the view.
- [accessibility(inputLabels:)](/documentation/swiftui/view/accessibility(inputlabels:)) Sets alternate input labels with which users identify a view.
- [accessibility(addTraits:)](/documentation/swiftui/view/accessibility(addtraits:)) Adds the given traits to the view.
- [accessibility(removeTraits:)](/documentation/swiftui/view/accessibility(removetraits:)) Removes the given traits from this view.
- [accessibility(sortPriority:)](/documentation/swiftui/view/accessibility(sortpriority:)) Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.

## Appearance modifiers

- [colorScheme(_:)](/documentation/swiftui/view/colorscheme(_:)) Sets this view’s color scheme.
- [listRowPlatterColor(_:)](/documentation/swiftui/view/listrowplattercolor(_:)) Sets the color that the system applies to the row background when this view is placed in a list.
- [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:)) Layers the given view behind this view.
- [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:)) Layers a secondary view in front of this view.
- [foregroundColor(_:)](/documentation/swiftui/view/foregroundcolor(_:)) Sets the color of the foreground elements displayed by this view.
- [complicationForeground()](/documentation/swiftui/view/complicationforeground()) Promotes this view to the foreground in a complication.

## Text modifiers

- [autocapitalization(_:)](/documentation/swiftui/view/autocapitalization(_:)) Sets whether to apply auto-capitalization to this view.
- [disableAutocorrection(_:)](/documentation/swiftui/view/disableautocorrection(_:)) Sets whether to disable autocorrection for this view.

## Auxiliary view modifiers

- [navigationBarTitle(_:)](/documentation/swiftui/view/navigationbartitle(_:)) Sets the title in the navigation bar for this view.
- [navigationBarTitle(_:displayMode:)](/documentation/swiftui/view/navigationbartitle(_:displaymode:)) Sets the title and display mode in the navigation bar for this view.
- [navigationBarItems(leading:)](/documentation/swiftui/view/navigationbaritems(leading:)) Sets the navigation bar items for this view.
- [navigationBarItems(leading:trailing:)](/documentation/swiftui/view/navigationbaritems(leading:trailing:)) Sets the navigation bar items for this view.
- [navigationBarItems(trailing:)](/documentation/swiftui/view/navigationbaritems(trailing:)) Configures the navigation bar items for this view.
- [navigationBarHidden(_:)](/documentation/swiftui/view/navigationbarhidden(_:)) Hides the navigation bar for this view.
- [statusBar(hidden:)](/documentation/swiftui/view/statusbar(hidden:)) Sets the visibility of the status bar.
- [contextMenu(_:)](/documentation/swiftui/view/contextmenu(_:)) Adds a context menu to the view.

## Style modifiers

- [menuButtonStyle(_:)](/documentation/swiftui/view/menubuttonstyle(_:)) Sets the style for menu buttons within this view.
- [navigationViewStyle(_:)](/documentation/swiftui/view/navigationviewstyle(_:)) Sets the style for navigation views within this view.

## Layout modifiers

- [frame()](/documentation/swiftui/view/frame()) Positions this view within an invisible frame.
- [edgesIgnoringSafeArea(_:)](/documentation/swiftui/view/edgesignoringsafearea(_:)) Changes the view’s proposed area to extend outside the screen’s safe areas.
- [coordinateSpace(name:)](/documentation/swiftui/view/coordinatespace(name:)) Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.

## Graphics and rendering modifiers

- [accentColor(_:)](/documentation/swiftui/view/accentcolor(_:)) Sets the accent color for this view and the views it contains.
- [mask(_:)](/documentation/swiftui/view/mask(_:)) Masks this view using the alpha channel of the given view.
- [animation(_:)](/documentation/swiftui/view/animation(_:)-1hc0p) Applies the given animation to all animatable values within this view.
- [cornerRadius(_:antialiased:)](/documentation/swiftui/view/cornerradius(_:antialiased:)) Clips this view to its bounding frame, with the specified corner radius.

## Input and events modifiers

- [onChange(of:perform:)](/documentation/swiftui/view/onchange(of:perform:)) Adds an action to perform when the given value changes.
- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:)-36x9h) Adds an action to perform when this view recognizes a tap gesture, and provides the action with the location of the interaction.
- [onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:pressing:perform:)) Adds an action to perform when this view recognizes a long press gesture.
- [onLongPressGesture(minimumDuration:pressing:perform:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:pressing:perform:)) Adds an action to perform when this view recognizes a long press gesture.
- [onPasteCommand(of:perform:)](/documentation/swiftui/view/onpastecommand(of:perform:)-4f78f) Adds an action to perform in response to the system’s Paste command.
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:)-964k1) Adds an action to perform in response to the system’s Paste command with items that you validate.
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:)-2vr9o) Defines the destination for a drag and drop operation with the same size and position as this view, with behavior controlled by the given delegate.
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:)) Defines the destination of a drag-and-drop operation that handles the dropped content with a closure that you specify.
- [focusable(_:onFocusChange:)](/documentation/swiftui/view/focusable(_:onfocuschange:)) Specifies if the view is focusable and, if so, adds an action to perform when the view comes into focus.
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:)-8gyrl) Adds an action to perform when the pointer enters, moves within, and exits the view’s bounds.

## View presentation modifiers

- [actionSheet(isPresented:content:)](/documentation/swiftui/view/actionsheet(ispresented:content:)) Presents an action sheet when a given condition is true.
- [actionSheet(item:content:)](/documentation/swiftui/view/actionsheet(item:content:)) Presents an action sheet using the given item as a data source for the sheet’s content.
- [alert(isPresented:content:)](/documentation/swiftui/view/alert(ispresented:content:)) Presents an alert to the user.
- [alert(item:content:)](/documentation/swiftui/view/alert(item:content:)) Presents an alert to the user.

## Search modifiers

- [searchable(text:placement:prompt:suggestions:)](/documentation/swiftui/view/searchable(text:placement:prompt:suggestions:)) Marks this view as searchable, which configures the display of a search field.

## Tab modifiers

- [tabItem(_:)](/documentation/swiftui/view/tabitem(_:)) Sets the tab bar item associated with this view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
