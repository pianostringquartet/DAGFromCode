---
title: Gestures
description: Define interactions from taps, clicks, and swipes to fine-grained gestures.
source: https://developer.apple.com/documentation/swiftui/gestures
timestamp: 2025-10-29T00:13:25.560Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Gestures

> Define interactions from taps, clicks, and swipes to fine-grained gestures.

## Overview

Respond to gestures by adding gesture modifiers to your views. You can listen for taps, drags, pinches, and other standard gestures.



You can also compose custom gestures from individual gestures using the [simultaneously(with:)](/documentation/swiftui/gesture/simultaneously(with:)), [sequenced(before:)](/documentation/swiftui/gesture/sequenced(before:)), or [exclusively(before:)](/documentation/swiftui/gesture/exclusively(before:)) modifiers, or combine gestures with keyboard modifiers using the [modifiers(_:)](/documentation/swiftui/gesture/modifiers(_:)) modifier.

> [!IMPORTANT]
> When you need a button, use a [Button](/documentation/swiftui/button) instance rather than a tap gesture. You can use any view as the button’s label, and the button type automatically provides many of the standard behaviors that users expect from a button, like accessibility labels and hints.

For design guidance, see [gestures](/design/Human-Interface-Guidelines/gestures) in the Human Interface Guidelines.

## Essentials

- [Adding interactivity with gestures](/documentation/swiftui/adding-interactivity-with-gestures) Use gesture modifiers to add interactivity to your app.

## Recognizing tap gestures

- [onTapGesture(count:perform:)](/documentation/swiftui/view/ontapgesture(count:perform:)) Adds an action to perform when this view recognizes a tap gesture.
- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:)) Adds an action to perform when this view recognizes a tap gesture, and provides the action with the location of the interaction.
- [TapGesture](/documentation/swiftui/tapgesture) A gesture that recognizes one or more taps.
- [SpatialTapGesture](/documentation/swiftui/spatialtapgesture) A gesture that recognizes one or more taps and reports their location.

## Recognizing long press gestures

- [onLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:perform:onpressingchanged:)) Adds an action to perform when this view recognizes a long press gesture.
- [onLongPressGesture(minimumDuration:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:perform:onpressingchanged:)) Adds an action to perform when this view recognizes a long press gesture.
- [onLongTouchGesture(minimumDuration:perform:onTouchingChanged:)](/documentation/swiftui/view/onlongtouchgesture(minimumduration:perform:ontouchingchanged:)) Adds an action to perform when this view recognizes a remote long touch gesture. A long touch gesture is when the finger is on the remote touch surface without actually pressing.
- [LongPressGesture](/documentation/swiftui/longpressgesture) A gesture that succeeds when the user performs a long press.

## Recognizing spatial events

- [SpatialEventGesture](/documentation/swiftui/spatialeventgesture) A gesture that provides information about ongoing spatial events like clicks and touches.
- [SpatialEventCollection](/documentation/swiftui/spatialeventcollection) A collection of spatial input events that target a specific view.
- [Chirality](/documentation/swiftui/chirality) The chirality, or handedness, of a pose.

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:)) Attaches an  to the view.
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:)) Attaches a gesture to the view with a lower precedence than gestures defined by the view.
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:)) Attaches a gesture to the view with a lower precedence than gestures defined by the view.
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) Attaches a gesture to the view with a lower precedence than gestures defined by the view.
- [DragGesture](/documentation/swiftui/draggesture) A dragging motion that invokes an action as the drag-event sequence changes.
- [WindowDragGesture](/documentation/swiftui/windowdraggesture) A gesture that recognizes the motion of and handles dragging a window.
- [MagnifyGesture](/documentation/swiftui/magnifygesture) A gesture that recognizes a magnification motion and tracks the amount of magnification.
- [RotateGesture](/documentation/swiftui/rotategesture) A gesture that recognizes a rotation motion and tracks the angle of the rotation.
- [RotateGesture3D](/documentation/swiftui/rotategesture3d) A gesture that recognizes 3D rotation motion and tracks the angle and axis of the rotation.
- [GestureMask](/documentation/swiftui/gesturemask) Options that control how adding a gesture to a view affects other gestures recognized by the view and its subviews.

## Recognizing Apple Pencil gestures

- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:)) Adds an action to perform after the user double-taps their Apple Pencil.
- [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:)) Adds an action to perform when the user squeezes their Apple Pencil.
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction) The action that the user prefers to perform after double-tapping their Apple Pencil, as selected in the Settings app.
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction) The action that the user prefers to perform when squeezing their Apple Pencil, as selected in the Settings app.
- [PencilPreferredAction](/documentation/swiftui/pencilpreferredaction) An action that the user prefers to perform after double-tapping their Apple Pencil.
- [PencilDoubleTapGestureValue](/documentation/swiftui/pencildoubletapgesturevalue) Describes the value of an Apple Pencil double-tap gesture.
- [PencilSqueezeGestureValue](/documentation/swiftui/pencilsqueezegesturevalue) Describes the value of an Apple Pencil squeeze gesture.
- [PencilSqueezeGesturePhase](/documentation/swiftui/pencilsqueezegesturephase) Describes the phase and value of an Apple Pencil squeeze gesture.
- [PencilHoverPose](/documentation/swiftui/pencilhoverpose) A value describing the location and distance of an Apple Pencil hovering in the area above a view’s bounds.

## Combining gestures

- [Composing SwiftUI gestures](/documentation/swiftui/composing-swiftui-gestures) Combine gestures to create complex interactions.
- [simultaneousGesture(_:including:)](/documentation/swiftui/view/simultaneousgesture(_:including:)) Attaches a gesture to the view to process simultaneously with gestures defined by the view.
- [simultaneousGesture(_:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:isenabled:)) Attaches a gesture to the view to process simultaneously with gestures defined by the view.
- [simultaneousGesture(_:name:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:name:isenabled:)) Attaches a gesture to the view to process simultaneously with gestures defined by the view.
- [SequenceGesture](/documentation/swiftui/sequencegesture) A gesture that’s a sequence of two gestures.
- [SimultaneousGesture](/documentation/swiftui/simultaneousgesture) A gesture containing two gestures that can happen at the same time with neither of them preceding the other.
- [ExclusiveGesture](/documentation/swiftui/exclusivegesture) A gesture that consists of two gestures where only one of them can succeed.

## Defining custom gestures

- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:)) Attaches a gesture to the view with a higher precedence than gestures defined by the view.
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:)) Attaches a gesture to the view with a higher precedence than gestures defined by the view.
- [highPriorityGesture(_:name:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:name:isenabled:)) Attaches a gesture to the view with a higher precedence than gestures defined by the view.
- [handGestureShortcut(_:isEnabled:)](/documentation/swiftui/view/handgestureshortcut(_:isenabled:)) Assigns a hand gesture shortcut to the modified control.
- [defersSystemGestures(on:)](/documentation/swiftui/view/deferssystemgestures(on:)) Sets the screen edge from which you want your gesture to take precedence over the system gesture.
- [Gesture](/documentation/swiftui/gesture) An instance that matches a sequence of events to a gesture, and returns a stream of values for each of its states.
- [AnyGesture](/documentation/swiftui/anygesture) A type-erased gesture.
- [HandActivationBehavior](/documentation/swiftui/handactivationbehavior) An activation behavior specific to hand-driven input.
- [HandGestureShortcut](/documentation/swiftui/handgestureshortcut) Hand gesture shortcuts describe finger and wrist movements that the user can perform in order to activate a button or toggle.

## Managing gesture state

- [GestureState](/documentation/swiftui/gesturestate) A property wrapper type that updates a property while the user performs a gesture and resets the property back to its initial state when the gesture ends.
- [GestureStateGesture](/documentation/swiftui/gesturestategesture) A gesture that updates the state provided by a gesture’s updating callback.

## Handling activation events

- [allowsWindowActivationEvents(_:)](/documentation/swiftui/view/allowswindowactivationevents(_:)) Configures whether gestures in this view hierarchy can handle events that activate the containing window.

## Deprecated gestures

- [MagnificationGesture](/documentation/swiftui/magnificationgesture) A gesture that recognizes a magnification motion and tracks the amount of magnification.
- [RotationGesture](/documentation/swiftui/rotationgesture) A gesture that recognizes a rotation motion and tracks the angle of the rotation.

## Event handling

- [Input events](/documentation/swiftui/input-events)
- [Clipboard](/documentation/swiftui/clipboard)
- [Drag and drop](/documentation/swiftui/drag-and-drop)
- [Focus](/documentation/swiftui/focus)
- [System events](/documentation/swiftui/system-events)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
