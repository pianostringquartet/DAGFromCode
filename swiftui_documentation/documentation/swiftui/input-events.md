---
title: Input events
description: Respond to input from a hardware device, like a keyboard or a Touch Bar.
source: https://developer.apple.com/documentation/swiftui/input-events
timestamp: 2025-10-29T00:14:18.765Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Input events

> Respond to input from a hardware device, like a keyboard or a Touch Bar.

## Overview

SwiftUI provides view modifiers that enable your app to listen for and react to various kinds of user input. For example, you can create keyboard shortcuts, respond to a form submission, or take input from the digital crown of an Apple Watch.



For design guidance, see [inputs](/design/Human-Interface-Guidelines/inputs) in the Human Interface Guidelines.

## Responding to keyboard input

- [onKeyPress(_:action:)](/documentation/swiftui/view/onkeypress(_:action:)) Performs an action if the user presses a key on a hardware keyboard while the view has focus.
- [onKeyPress(phases:action:)](/documentation/swiftui/view/onkeypress(phases:action:)) Performs an action if the user presses any key on a hardware keyboard while the view has focus.
- [onKeyPress(_:phases:action:)](/documentation/swiftui/view/onkeypress(_:phases:action:)) Performs an action if the user presses a key on a hardware keyboard while the view has focus.
- [onKeyPress(characters:phases:action:)](/documentation/swiftui/view/onkeypress(characters:phases:action:)) Performs an action if the user presses one or more keys on a hardware keyboard while the view has focus.
- [onKeyPress(keys:phases:action:)](/documentation/swiftui/view/onkeypress(keys:phases:action:)) Performs an action if the user presses one or more keys on a hardware keyboard while the view has focus.
- [KeyPress](/documentation/swiftui/keypress)

## Creating keyboard shortcuts

- [keyboardShortcut(_:)](/documentation/swiftui/view/keyboardshortcut(_:)) Assigns a keyboard shortcut to the modified control.
- [keyboardShortcut(_:modifiers:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:)) Defines a keyboard shortcut and assigns it to the modified control.
- [keyboardShortcut(_:modifiers:localization:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:localization:)) Defines a keyboard shortcut and assigns it to the modified control.
- [keyboardShortcut](/documentation/swiftui/environmentvalues/keyboardshortcut) The keyboard shortcut that buttons in this environment will be triggered with.
- [KeyboardShortcut](/documentation/swiftui/keyboardshortcut) Keyboard shortcuts describe combinations of keys on a keyboard that the user can press in order to activate a button or toggle.
- [KeyEquivalent](/documentation/swiftui/keyequivalent) Key equivalents consist of a letter, punctuation, or function key that can be combined with an optional set of modifier keys to specify a keyboard shortcut.
- [EventModifiers](/documentation/swiftui/eventmodifiers) A set of key modifiers that you can add to a gesture.

## Responding to modifier keys

- [onModifierKeysChanged(mask:initial:_:)](/documentation/swiftui/view/onmodifierkeyschanged(mask:initial:_:)) Performs an action whenever the user presses or releases a hardware modifier key.
- [modifierKeyAlternate(_:_:)](/documentation/swiftui/view/modifierkeyalternate(_:_:)) Builds a view to use in place of the modified view when the user presses the modifier key(s) indicated by the given set.

## Responding to hover events

- [onHover(perform:)](/documentation/swiftui/view/onhover(perform:)) Adds an action to perform when the user moves the pointer over or away from the view’s frame.
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:)) Adds an action to perform when the pointer enters, moves within, and exits the view’s bounds.
- [hoverEffect(_:isEnabled:)](/documentation/swiftui/view/hovereffect(_:isenabled:)) Applies a hover effect to this view.
- [hoverEffectDisabled(_:)](/documentation/swiftui/view/hovereffectdisabled(_:)) Adds a condition that controls whether this view can display hover effects.
- [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:)) Sets the default hover effect to use for views within this view.
- [isHoverEffectEnabled](/documentation/swiftui/environmentvalues/ishovereffectenabled) A Boolean value that indicates whether the view associated with this environment allows hover effects to be displayed.
- [HoverPhase](/documentation/swiftui/hoverphase) The current hovering state and value of the pointer.
- [HoverEffectPhaseOverride](/documentation/swiftui/hovereffectphaseoverride) Options for overriding a hover effect’s current phase.
- [OrnamentHoverContentEffect](/documentation/swiftui/ornamenthovercontenteffect) Presents an ornament on hover using a custom effect.
- [OrnamentHoverEffect](/documentation/swiftui/ornamenthovereffect) Presents an ornament on hover.

## Modifying pointer appearance

- [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) Sets the pointer style to display when the pointer is over the view.
- [PointerStyle](/documentation/swiftui/pointerstyle) A style describing the appearance of the pointer (also called a cursor) when it’s hovered over a view.
- [pointerVisibility(_:)](/documentation/swiftui/view/pointervisibility(_:)) Sets the visibility of the pointer when it’s over the view.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:)) Applies a hover effect to this view.
- [HoverEffect](/documentation/swiftui/hovereffect) An effect applied when the pointer hovers over a view.
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:)) Applies a hover effect to this view, optionally adding it to a .
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:)) Applies a hover effect to this view described by the given closure.
- [CustomHoverEffect](/documentation/swiftui/customhovereffect) A type that represents how a view should change when a pointer hovers over a view, or when someone looks at the view.
- [ContentHoverEffect](/documentation/swiftui/contenthovereffect) A  that applies effects to a view on hover using a closure.
- [HoverEffectGroup](/documentation/swiftui/hovereffectgroup) Describes a grouping of effects that activate together.
- [hoverEffectGroup()](/documentation/swiftui/view/hovereffectgroup()) Adds an implicit  to all effects defined on descendant views, so that all effects added to subviews activate as a group whenever this view or any descendant views are hovered.
- [hoverEffectGroup(_:)](/documentation/swiftui/view/hovereffectgroup(_:)) Adds a  to all effects defined on descendant views, and activates the group whenever this view or any descendant views are hovered.
- [hoverEffectGroup(id:in:behavior:)](/documentation/swiftui/view/hovereffectgroup(id:in:behavior:)) Adds a  to all effects defined on descendant views, and activates the group whenever this view or any descendant views are hovered.
- [GroupHoverEffect](/documentation/swiftui/grouphovereffect) A  that activates a named group of effects.
- [HoverEffectContent](/documentation/swiftui/hovereffectcontent) A type that describes the effects of a view for a particular hover effect phase.
- [EmptyHoverEffectContent](/documentation/swiftui/emptyhovereffectcontent) An empty base effect that you use to build other effects.
- [handPointerBehavior(_:)](/documentation/swiftui/view/handpointerbehavior(_:)) Sets the behavior of the hand pointer while the user is interacting with the view.
- [HandPointerBehavior](/documentation/swiftui/handpointerbehavior) A behavior that can be applied to the hand pointer while the user is interacting with a view.

## Responding to submission events

- [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) Adds an action to perform when the user submits a value to this view.
- [submitScope(_:)](/documentation/swiftui/view/submitscope(_:)) Prevents submission triggers originating from this view to invoke a submission action configured by a submission modifier higher up in the view hierarchy.
- [SubmitTriggers](/documentation/swiftui/submittriggers) A type that defines various triggers that result in the firing of a submission action.

## Labeling a submission event

- [submitLabel(_:)](/documentation/swiftui/view/submitlabel(_:)) Sets the submit label for this view.
- [SubmitLabel](/documentation/swiftui/submitlabel) A semantic label describing the label of submission within a view hierarchy.

## Responding to commands

- [onMoveCommand(perform:)](/documentation/swiftui/view/onmovecommand(perform:)) Adds an action to perform in response to a move command, like when the user presses an arrow key on a Mac keyboard, or taps the edge of the Siri Remote when controlling an Apple TV.
- [onDeleteCommand(perform:)](/documentation/swiftui/view/ondeletecommand(perform:)) Adds an action to perform in response to the system’s Delete command, or pressing either the ⌫ (backspace) or ⌦ (forward delete) keys while the view has focus.
- [pageCommand(value:in:step:)](/documentation/swiftui/view/pagecommand(value:in:step:)) Steps a value through a range in response to page up or page down commands.
- [onExitCommand(perform:)](/documentation/swiftui/view/onexitcommand(perform:)) Sets up an action that triggers in response to receiving the exit command while the view has focus.
- [onPlayPauseCommand(perform:)](/documentation/swiftui/view/onplaypausecommand(perform:)) Adds an action to perform in response to the system’s Play/Pause command.
- [onCommand(_:perform:)](/documentation/swiftui/view/oncommand(_:perform:)) Adds an action to perform in response to the given selector.
- [MoveCommandDirection](/documentation/swiftui/movecommanddirection) Specifies the direction of an arrow key movement.

## Controlling hit testing

- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:)) Sets whether text in this view can compress the space between characters when necessary to fit text in a line.
- [contentShape(_:eoFill:)](/documentation/swiftui/view/contentshape(_:eofill:)) Defines the content shape for hit testing.
- [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) Sets the content shape for this view.
- [ContentShapeKinds](/documentation/swiftui/contentshapekinds) A kind for the content shape of a view.

## Interacting with the Digital Crown

- [digitalCrownAccessory(_:)](/documentation/swiftui/view/digitalcrownaccessory(_:)) Specifies the visibility of Digital Crown accessory Views on Apple Watch.
- [digitalCrownAccessory(content:)](/documentation/swiftui/view/digitalcrownaccessory(content:)) Places an accessory View next to the Digital Crown on Apple Watch.
- [digitalCrownRotation(_:from:through:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(_:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:onchange:onidle:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(detent:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(_:)](/documentation/swiftui/view/digitalcrownrotation(_:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(_:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:)) Tracks Digital Crown rotations by updating the specified binding.
- [DigitalCrownEvent](/documentation/swiftui/digitalcrownevent) An event emitted when the user rotates the Digital Crown.
- [DigitalCrownRotationalSensitivity](/documentation/swiftui/digitalcrownrotationalsensitivity) The amount of Digital Crown rotation needed to move between two integer numbers.

## Managing Touch Bar input

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:)) Sets the content that the Touch Bar displays.
- [touchBar(_:)](/documentation/swiftui/view/touchbar(_:)) Sets the Touch Bar content to be shown in the Touch Bar when applicable.
- [touchBarItemPrincipal(_:)](/documentation/swiftui/view/touchbaritemprincipal(_:)) Sets principal views that have special significance to this Touch Bar.
- [touchBarCustomizationLabel(_:)](/documentation/swiftui/view/touchbarcustomizationlabel(_:)) Sets a user-visible string that identifies the view’s functionality.
- [touchBarItemPresence(_:)](/documentation/swiftui/view/touchbaritempresence(_:)) Sets the behavior of the user-customized view.
- [TouchBar](/documentation/swiftui/touchbar) A container for a view that you can show in the Touch Bar.
- [TouchBarItemPresence](/documentation/swiftui/touchbaritempresence) Options that affect user customization of the Touch Bar.

## Responding to capture events

- [onCameraCaptureEvent(isEnabled:action:)](/documentation/swiftui/view/oncameracaptureevent(isenabled:action:)) Used to register an action triggered by system capture events.
- [onCameraCaptureEvent(isEnabled:primaryAction:secondaryAction:)](/documentation/swiftui/view/oncameracaptureevent(isenabled:primaryaction:secondaryaction:)) Used to register actions triggered by system capture events.

## Event handling

- [Gestures](/documentation/swiftui/gestures)
- [Clipboard](/documentation/swiftui/clipboard)
- [Drag and drop](/documentation/swiftui/drag-and-drop)
- [Focus](/documentation/swiftui/focus)
- [System events](/documentation/swiftui/system-events)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
