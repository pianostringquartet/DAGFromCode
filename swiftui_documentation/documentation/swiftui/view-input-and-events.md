---
title: Input and event modifiers
description: Supply actions for a view to perform in response to user input and system events.
source: https://developer.apple.com/documentation/swiftui/view-input-and-events
timestamp: 2025-10-29T00:12:21.379Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Input and event modifiers

> Supply actions for a view to perform in response to user input and system events.

## Overview

Use input and event modifiers to configure and provide handlers for a wide variety of user inputs or system events. For example, you can detect and control focus, respond to life cycle events like view appearance and disappearance, manage keyboard shortcuts, and much more.

## Interactivity

- [disabled(_:)](/documentation/swiftui/view/disabled(_:)) Adds a condition that controls whether users can interact with this view.
- [interactionActivityTrackingTag(_:)](/documentation/swiftui/view/interactionactivitytrackingtag(_:)) Sets a tag that you use for tracking interactivity.

## List controls

- [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/view/swipeactions(edge:allowsfullswipe:content:)) Adds custom swipe actions to a row in a list.
- [refreshable(action:)](/documentation/swiftui/view/refreshable(action:)) Marks this view as refreshable.
- [selectionDisabled(_:)](/documentation/swiftui/view/selectiondisabled(_:)) Adds a condition that controls whether users can select this view.

## Scroll controls

- [scrollPosition(_:anchor:)](/documentation/swiftui/view/scrollposition(_:anchor:)) Associates a binding to a scroll position with a scroll view within this view.
- [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:)) Associates a binding to be updated when a scroll view within this view scrolls.
- [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:)) Associates an anchor to control which part of the scroll view’s content should be rendered by default.
- [defaultScrollAnchor(_:for:)](/documentation/swiftui/view/defaultscrollanchor(_:for:)) Associates an anchor to control the position of a scroll view in a particular circumstance.
- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:)) Sets the scroll behavior of views scrollable in the provided axes.
- [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:)) Configures the outermost layout as a scroll target layout.
- [scrollTransition(_:axis:transition:)](/documentation/swiftui/view/scrolltransition(_:axis:transition:)) Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.
- [scrollTransition(topLeading:bottomTrailing:axis:transition:)](/documentation/swiftui/view/scrolltransition(topleading:bottomtrailing:axis:transition:)) Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.
- [onScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/onscrollgeometrychange(for:of:action:)) Adds an action to be performed when a value, created from a scroll geometry, changes.
- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:)) Adds an action to be called with information about what views would be considered visible.
- [onScrollVisibilityChange(threshold:_:)](/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:)) Adds an action to be called when the view crosses the threshold to be considered on/off screen.
- [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:)) Adds an action to perform when the scroll phase of the first scroll view in the hierarchy changes.

## Geometry

- [onGeometryChange(for:of:action:)](/documentation/swiftui/view/ongeometrychange(for:of:action:)) Adds an action to be performed when a value, created from a geometry proxy, changes.

## Taps and gestures

- [onTapGesture(count:perform:)](/documentation/swiftui/view/ontapgesture(count:perform:)) Adds an action to perform when this view recognizes a tap gesture.
- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:)) Adds an action to perform when this view recognizes a tap gesture, and provides the action with the location of the interaction.
- [onLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:perform:onpressingchanged:)) Adds an action to perform when this view recognizes a long press gesture.
- [onLongPressGesture(minimumDuration:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:perform:onpressingchanged:)) Adds an action to perform when this view recognizes a long press gesture.
- [onLongTouchGesture(minimumDuration:perform:onTouchingChanged:)](/documentation/swiftui/view/onlongtouchgesture(minimumduration:perform:ontouchingchanged:)) Adds an action to perform when this view recognizes a remote long touch gesture. A long touch gesture is when the finger is on the remote touch surface without actually pressing.
- [gesture(_:)](/documentation/swiftui/view/gesture(_:)) Attaches an  to the view.
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:)) Attaches a gesture to the view with a lower precedence than gestures defined by the view.
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:)) Attaches a gesture to the view with a lower precedence than gestures defined by the view.
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) Attaches a gesture to the view with a lower precedence than gestures defined by the view.
- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:)) Attaches a gesture to the view with a higher precedence than gestures defined by the view.
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:)) Attaches a gesture to the view with a higher precedence than gestures defined by the view.
- [highPriorityGesture(_:name:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:name:isenabled:)) Attaches a gesture to the view with a higher precedence than gestures defined by the view.
- [simultaneousGesture(_:including:)](/documentation/swiftui/view/simultaneousgesture(_:including:)) Attaches a gesture to the view to process simultaneously with gestures defined by the view.
- [simultaneousGesture(_:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:isenabled:)) Attaches a gesture to the view to process simultaneously with gestures defined by the view.
- [simultaneousGesture(_:name:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:name:isenabled:)) Attaches a gesture to the view to process simultaneously with gestures defined by the view.
- [defersSystemGestures(on:)](/documentation/swiftui/view/deferssystemgestures(on:)) Sets the screen edge from which you want your gesture to take precedence over the system gesture.
- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:)) Adds an action to perform after the user double-taps their Apple Pencil.
- [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:)) Adds an action to perform when the user squeezes their Apple Pencil.
- [allowsWindowActivationEvents(_:)](/documentation/swiftui/view/allowswindowactivationevents(_:)) Configures whether gestures in this view hierarchy can handle events that activate the containing window.

## Keyboard input

- [onKeyPress(_:action:)](/documentation/swiftui/view/onkeypress(_:action:)) Performs an action if the user presses a key on a hardware keyboard while the view has focus.
- [onKeyPress(phases:action:)](/documentation/swiftui/view/onkeypress(phases:action:)) Performs an action if the user presses any key on a hardware keyboard while the view has focus.
- [onKeyPress(_:phases:action:)](/documentation/swiftui/view/onkeypress(_:phases:action:)) Performs an action if the user presses a key on a hardware keyboard while the view has focus.
- [onKeyPress(characters:phases:action:)](/documentation/swiftui/view/onkeypress(characters:phases:action:)) Performs an action if the user presses one or more keys on a hardware keyboard while the view has focus.
- [onKeyPress(keys:phases:action:)](/documentation/swiftui/view/onkeypress(keys:phases:action:)) Performs an action if the user presses one or more keys on a hardware keyboard while the view has focus.
- [onModifierKeysChanged(mask:initial:_:)](/documentation/swiftui/view/onmodifierkeyschanged(mask:initial:_:)) Performs an action whenever the user presses or releases a hardware modifier key.

## Keyboard shortcuts

- [keyboardShortcut(_:)](/documentation/swiftui/view/keyboardshortcut(_:)) Assigns a keyboard shortcut to the modified control.
- [keyboardShortcut(_:modifiers:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:)) Defines a keyboard shortcut and assigns it to the modified control.
- [keyboardShortcut(_:modifiers:localization:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:localization:)) Defines a keyboard shortcut and assigns it to the modified control.
- [modifierKeyAlternate(_:_:)](/documentation/swiftui/view/modifierkeyalternate(_:_:)) Builds a view to use in place of the modified view when the user presses the modifier key(s) indicated by the given set.

## Hover

- [onHover(perform:)](/documentation/swiftui/view/onhover(perform:)) Adds an action to perform when the user moves the pointer over or away from the view’s frame.
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:)) Adds an action to perform when the pointer enters, moves within, and exits the view’s bounds.
- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:)) Applies a hover effect to this view.
- [hoverEffect(_:isEnabled:)](/documentation/swiftui/view/hovereffect(_:isenabled:)) Applies a hover effect to this view.
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:)) Applies a hover effect to this view, optionally adding it to a .
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:)) Applies a hover effect to this view described by the given closure.
- [hoverEffectGroup()](/documentation/swiftui/view/hovereffectgroup()) Adds an implicit  to all effects defined on descendant views, so that all effects added to subviews activate as a group whenever this view or any descendant views are hovered.
- [hoverEffectGroup(_:)](/documentation/swiftui/view/hovereffectgroup(_:)) Adds a  to all effects defined on descendant views, and activates the group whenever this view or any descendant views are hovered.
- [hoverEffectGroup(id:in:behavior:)](/documentation/swiftui/view/hovereffectgroup(id:in:behavior:)) Adds a  to all effects defined on descendant views, and activates the group whenever this view or any descendant views are hovered.
- [hoverEffectDisabled(_:)](/documentation/swiftui/view/hovereffectdisabled(_:)) Adds a condition that controls whether this view can display hover effects.
- [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:)) Sets the default hover effect to use for views within this view.
- [listRowHoverEffect(_:)](/documentation/swiftui/view/listrowhovereffect(_:)) Requests that the containing list row use the provided hover effect.
- [listRowHoverEffectDisabled(_:)](/documentation/swiftui/view/listrowhovereffectdisabled(_:)) Requests that the containing list row have its hover effect disabled.

## Pointer

- [pointerVisibility(_:)](/documentation/swiftui/view/pointervisibility(_:)) Sets the visibility of the pointer when it’s over the view.
- [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) Sets the pointer style to display when the pointer is over the view.

## Focus

- [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:)) Modifies this view by binding its focus state to the given state value.
- [focused(_:)](/documentation/swiftui/view/focused(_:)) Modifies this view by binding its focus state to the given Boolean state value.
- [focusedValue(_:)](/documentation/swiftui/view/focusedvalue(_:)) Sets the focused value for the given object type.
- [focusedValue(_:_:)](/documentation/swiftui/view/focusedvalue(_:_:)) Modifies this view by injecting a value that you provide for use by other views whose state depends on the focused view hierarchy.
- [focusedSceneValue(_:)](/documentation/swiftui/view/focusedscenevalue(_:)) Sets the focused value for the given object type at a scene-wide scope.
- [focusedSceneValue(_:_:)](/documentation/swiftui/view/focusedscenevalue(_:_:)) Modifies this view by injecting a value that you provide for use by other views whose state depends on the focused scene.
- [focusedObject(_:)](/documentation/swiftui/view/focusedobject(_:)) Creates a new view that exposes the provided object to other views whose whose state depends on the focused view hierarchy.
- [focusedSceneObject(_:)](/documentation/swiftui/view/focusedsceneobject(_:)) Creates a new view that exposes the provided object to other views whose whose state depends on the active scene.
- [prefersDefaultFocus(_:in:)](/documentation/swiftui/view/prefersdefaultfocus(_:in:)) Indicates that the view should receive focus by default for a given namespace.
- [focusScope(_:)](/documentation/swiftui/view/focusscope(_:)) Creates a focus scope that SwiftUI uses to limit default focus preferences.
- [focusSection()](/documentation/swiftui/view/focussection()) Indicates that the view’s frame and cohort of focusable descendants should be used to guide focus movement.
- [focusable(_:)](/documentation/swiftui/view/focusable(_:)) Specifies if the view is focusable.
- [focusable(_:interactions:)](/documentation/swiftui/view/focusable(_:interactions:)) Specifies if the view is focusable, and if so, what focus-driven interactions it supports.
- [focusEffectDisabled(_:)](/documentation/swiftui/view/focuseffectdisabled(_:)) Adds a condition that controls whether this view can display focus effects, such as a default focus ring or hover effect.
- [defaultFocus(_:_:priority:)](/documentation/swiftui/view/defaultfocus(_:_:priority:)) Defines a region of the window in which default focus is evaluated by assigning a value to a given focus state binding.
- [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:)) Modifies this view by binding the focus state of the search field associated with the nearest searchable modifier to the given Boolean value.
- [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:)) Modifies this view by binding the focus state of the search field associated with the nearest searchable modifier to the given value.

## Copy and paste

- [copyable(_:)](/documentation/swiftui/view/copyable(_:)) Specifies a list of items to copy in response to the system’s Copy command.
- [cuttable(for:action:)](/documentation/swiftui/view/cuttable(for:action:)) Specifies an action that moves items to the Clipboard in response to the system’s Cut command.
- [pasteDestination(for:action:validator:)](/documentation/swiftui/view/pastedestination(for:action:validator:)) Specifies an action that adds validated items to a view in response to the system’s Paste command.
- [onCopyCommand(perform:)](/documentation/swiftui/view/oncopycommand(perform:)) Adds an action to perform in response to the system’s Copy command.
- [onCutCommand(perform:)](/documentation/swiftui/view/oncutcommand(perform:)) Adds an action to perform in response to the system’s Cut command.
- [onPasteCommand(of:perform:)](/documentation/swiftui/view/onpastecommand(of:perform:)) Adds an action to perform in response to the system’s Paste command.
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:)) Adds an action to perform in response to the system’s Paste command with items that you validate.

## Drag and drop

- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:)) Activates this view as the source of a drag and drop operation.
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:)) Activates this view as the source of a drag and drop operation.
- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:)) Provides a closure that vends the drag representation to be used for a particular data element.
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:)) Defines the destination of a drag-and-drop operation that handles the dropped content with a closure that you specify.
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:)) Defines the destination of a drag and drop operation using behavior controlled by the delegate that you provide.
- [dropDestination(for:action:isTargeted:)](/documentation/swiftui/view/dropdestination(for:action:istargeted:)) Defines the destination of a drag and drop operation that handles the dropped content with a closure that you specify.
- [draggable(_:)](/documentation/swiftui/view/draggable(_:)) Activates this view as the source of a drag and drop operation.
- [draggable(_:preview:)](/documentation/swiftui/view/draggable(_:preview:)) Activates this view as the source of a drag and drop operation.
- [springLoadingBehavior(_:)](/documentation/swiftui/view/springloadingbehavior(_:)) Sets the spring loading behavior this view.

## Submission

- [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) Adds an action to perform when the user submits a value to this view.
- [submitScope(_:)](/documentation/swiftui/view/submitscope(_:)) Prevents submission triggers originating from this view to invoke a submission action configured by a submission modifier higher up in the view hierarchy.
- [submitLabel(_:)](/documentation/swiftui/view/submitlabel(_:)) Sets the submit label for this view.

## Movement

- [onMoveCommand(perform:)](/documentation/swiftui/view/onmovecommand(perform:)) Adds an action to perform in response to a move command, like when the user presses an arrow key on a Mac keyboard, or taps the edge of the Siri Remote when controlling an Apple TV.
- [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:)) Adds a condition for whether the view’s view hierarchy is movable.

## Deletion

- [onDeleteCommand(perform:)](/documentation/swiftui/view/ondeletecommand(perform:)) Adds an action to perform in response to the system’s Delete command, or pressing either the ⌫ (backspace) or ⌦ (forward delete) keys while the view has focus.
- [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:)) Adds a condition for whether the view’s view hierarchy is deletable.

## Commands

- [pageCommand(value:in:step:)](/documentation/swiftui/view/pagecommand(value:in:step:)) Steps a value through a range in response to page up or page down commands.
- [onExitCommand(perform:)](/documentation/swiftui/view/onexitcommand(perform:)) Sets up an action that triggers in response to receiving the exit command while the view has focus.
- [onPlayPauseCommand(perform:)](/documentation/swiftui/view/onplaypausecommand(perform:)) Adds an action to perform in response to the system’s Play/Pause command.
- [onCommand(_:perform:)](/documentation/swiftui/view/oncommand(_:perform:)) Adds an action to perform in response to the given selector.

## Digital crown

- [digitalCrownAccessory(_:)](/documentation/swiftui/view/digitalcrownaccessory(_:)) Specifies the visibility of Digital Crown accessory Views on Apple Watch.
- [digitalCrownAccessory(content:)](/documentation/swiftui/view/digitalcrownaccessory(content:)) Places an accessory View next to the Digital Crown on Apple Watch.
- [digitalCrownRotation(_:from:through:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(_:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:onchange:onidle:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(detent:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(_:)](/documentation/swiftui/view/digitalcrownrotation(_:)) Tracks Digital Crown rotations by updating the specified binding.
- [digitalCrownRotation(_:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:)) Tracks Digital Crown rotations by updating the specified binding.

## Immersive Spaces

- [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:)) Performs an action when the immersion state of your app changes.

## Volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:)) Adds an action to perform when the viewpoint of the volume changes.
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:)) Specifies which viewpoints are supported for the window bar and ornaments in a volume.

## User activities

- [userActivity(_:element:_:)](/documentation/swiftui/view/useractivity(_:element:_:)) Advertises a user activity type.
- [userActivity(_:isActive:_:)](/documentation/swiftui/view/useractivity(_:isactive:_:)) Advertises a user activity type.
- [onContinueUserActivity(_:perform:)](/documentation/swiftui/view/oncontinueuseractivity(_:perform:)) Registers a handler to invoke in response to a user activity that your app receives.
- [handlesExternalEvents(preferring:allowing:)](/documentation/swiftui/view/handlesexternalevents(preferring:allowing:)) Specifies the external events that the view’s scene handles if the scene is already open.

## View life cycle

- [onAppear(perform:)](/documentation/swiftui/view/onappear(perform:)) Adds an action to perform before this view appears.
- [onDisappear(perform:)](/documentation/swiftui/view/ondisappear(perform:)) Adds an action to perform after this view disappears.
- [onChange(of:initial:_:)](/documentation/swiftui/view/onchange(of:initial:_:)) Adds a modifier for this view that fires an action when a specific value changes.
- [task(priority:_:)](/documentation/swiftui/view/task(priority:_:)) Adds an asynchronous task to perform before this view appears.
- [task(id:priority:_:)](/documentation/swiftui/view/task(id:priority:_:)) Adds a task to perform before this view appears or when a specified value changes.

## File renaming

- [renameAction(_:)](/documentation/swiftui/view/renameaction(_:)) Sets a closure to run for the rename action.

## URLs

- [onOpenURL(perform:)](/documentation/swiftui/view/onopenurl(perform:)) Registers a handler to invoke in response to a URL that your app receives.
- [widgetURL(_:)](/documentation/swiftui/view/widgeturl(_:)) Sets the URL to open in the containing app when the user clicks the widget.

## Publisher events

- [onReceive(_:perform:)](/documentation/swiftui/view/onreceive(_:perform:)) Adds an action to perform when this view detects data emitted by the given publisher.

## Hit testing

- [allowsHitTesting(_:)](/documentation/swiftui/view/allowshittesting(_:)) Configures whether this view participates in hit test operations.

## Content shape

- [contentShape(_:eoFill:)](/documentation/swiftui/view/contentshape(_:eofill:)) Defines the content shape for hit testing.
- [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) Sets the content shape for this view.

## Import and export

- [exportsItemProviders(_:onExport:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:)) Exports a read-only item provider for consumption by shortcuts, quick actions, and services.
- [exportsItemProviders(_:onExport:onEdit:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:onedit:)) Exports a read-write item provider for consumption by shortcuts, quick actions, and services.
- [importsItemProviders(_:onImport:)](/documentation/swiftui/view/importsitemproviders(_:onimport:)) Enables importing item providers from services, such as Continuity Camera on macOS.
- [exportableToServices(_:)](/documentation/swiftui/view/exportabletoservices(_:)) Exports items for consumption by shortcuts, quick actions, and services.
- [exportableToServices(_:onEdit:)](/documentation/swiftui/view/exportabletoservices(_:onedit:)) Exports read-write items for consumption by shortcuts, quick actions, and services.
- [importableFromServices(for:action:)](/documentation/swiftui/view/importablefromservices(for:action:)) Enables importing items from services, such as Continuity Camera on macOS.

## App intents

- [shortcutsLinkStyle(_:)](/documentation/swiftui/view/shortcutslinkstyle(_:)) Sets the given style for ShortcutsLinks within the view hierarchy
- [siriTipViewStyle(_:)](/documentation/swiftui/view/siritipviewstyle(_:)) Sets the given style for SiriTipView within the view hierarchy

## Camera

- [onCameraCaptureEvent(isEnabled:action:)](/documentation/swiftui/view/oncameracaptureevent(isenabled:action:)) Used to register an action triggered by system capture events.
- [onCameraCaptureEvent(isEnabled:primaryAction:secondaryAction:)](/documentation/swiftui/view/oncameracaptureevent(isenabled:primaryaction:secondaryaction:)) Used to register actions triggered by system capture events.
- [cameraAnchor(isActive:)](/documentation/swiftui/view/cameraanchor(isactive:)) Specifies the view that should act as the virtual camera for Apple Vision Pro 2D Persona stream.

## Providing interactivity

- [Search modifiers](/documentation/swiftui/view-search)
- [Presentation modifiers](/documentation/swiftui/view-presentation)
- [State modifiers](/documentation/swiftui/view-state)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
