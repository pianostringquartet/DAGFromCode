---
title: Accessible controls
description: Improve access to actions that your app can undertake.
source: https://developer.apple.com/documentation/swiftui/accessible-controls
timestamp: 2025-10-29T00:09:46.577Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Accessible controls

> Improve access to actions that your app can undertake.

## Overview

Help people using assistive technologies to gain access to controls in your app.



For design guidance, see [accessibility#Buttons-and](/design/Human-Interface-Guidelines/accessibility) in the Accessibility section of the Human Interface Guidelines.

## Adding actions to views

- [accessibilityAction(_:_:)](/documentation/swiftui/view/accessibilityaction(_:_:)) Adds an accessibility action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityActions(_:)](/documentation/swiftui/view/accessibilityactions(_:)) Adds multiple accessibility actions to the view.
- [accessibilityAction(named:_:)](/documentation/swiftui/view/accessibilityaction(named:_:)) Adds an accessibility action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityAction(action:label:)](/documentation/swiftui/view/accessibilityaction(action:label:)) Adds an accessibility action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityAction(intent:label:)](/documentation/swiftui/view/accessibilityaction(intent:label:)) Adds an accessibility action labeled by the contents of  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.
- [accessibilityAction(_:intent:)](/documentation/swiftui/view/accessibilityaction(_:intent:)) Adds an accessibility action representing  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.
- [accessibilityAction(named:intent:)](/documentation/swiftui/view/accessibilityaction(named:intent:)) Adds an accessibility action labeled  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.
- [accessibilityAdjustableAction(_:)](/documentation/swiftui/view/accessibilityadjustableaction(_:)) Adds an accessibility adjustable action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityScrollAction(_:)](/documentation/swiftui/view/accessibilityscrollaction(_:)) Adds an accessibility scroll action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityActions(category:_:)](/documentation/swiftui/view/accessibilityactions(category:_:)) Adds multiple accessibility actions to the view with a specific category. Actions allow assistive technologies, such as VoiceOver, to interact with the view by invoking the action and are grouped by their category. When multiple action modifiers with an equal category are applied to the view, the actions are combined together.
- [AccessibilityActionKind](/documentation/swiftui/accessibilityactionkind) The structure that defines the kinds of available accessibility actions.
- [AccessibilityAdjustmentDirection](/documentation/swiftui/accessibilityadjustmentdirection) A directional indicator you use when making an accessibility adjustment.
- [AccessibilityActionCategory](/documentation/swiftui/accessibilityactioncategory) Designates an accessibility action category that is provided and named by the system.

## Offering Quick Actions to people

- [accessibilityQuickAction(style:content:)](/documentation/swiftui/view/accessibilityquickaction(style:content:)) Adds a quick action to be shown by the system when active.
- [accessibilityQuickAction(style:isActive:content:)](/documentation/swiftui/view/accessibilityquickaction(style:isactive:content:)) Adds a quick action to be shown by the system when active.
- [AccessibilityQuickActionStyle](/documentation/swiftui/accessibilityquickactionstyle) A type that describes the presentation style of an accessibility quick action.

## Making gestures accessible

- [accessibilityActivationPoint(_:)](/documentation/swiftui/view/accessibilityactivationpoint(_:)) The activation point for an element is the location assistive technologies use to initiate gestures.
- [accessibilityActivationPoint(_:isEnabled:)](/documentation/swiftui/view/accessibilityactivationpoint(_:isenabled:)) The activation point for an element is the location assistive technologies use to initiate gestures.
- [accessibilityDragPoint(_:description:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:)) The point an assistive technology should use to begin a drag interaction.
- [accessibilityDragPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:isenabled:)) The point an assistive technology should use to begin a drag interaction.
- [accessibilityDropPoint(_:description:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:)) The point an assistive technology should use to end a drag interaction.
- [accessibilityDropPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:isenabled:)) The point an assistive technology should use to end a drag interaction.
- [accessibilityDirectTouch(_:options:)](/documentation/swiftui/view/accessibilitydirecttouch(_:options:)) Explicitly set whether this accessibility element is a direct touch area. Direct touch areas passthrough touch events to the app rather than being handled through an assistive technology, such as VoiceOver. The modifier accepts an optional  option set to customize the functionality of the direct touch area.
- [accessibilityZoomAction(_:)](/documentation/swiftui/view/accessibilityzoomaction(_:)) Adds an accessibility zoom action to the view. Actions allow assistive technologies, such as VoiceOver, to interact with the view by invoking the action.
- [AccessibilityDirectTouchOptions](/documentation/swiftui/accessibilitydirecttouchoptions) An option set that defines the functionality of a view’s direct touch area.
- [AccessibilityZoomGestureAction](/documentation/swiftui/accessibilityzoomgestureaction) Position and direction information of a zoom gesture that someone performs with an assistive technology like VoiceOver.

## Controlling focus

- [accessibilityFocused(_:)](/documentation/swiftui/view/accessibilityfocused(_:)) Modifies this view by binding its accessibility element’s focus state to the given boolean state value.
- [accessibilityFocused(_:equals:)](/documentation/swiftui/view/accessibilityfocused(_:equals:)) Modifies this view by binding its accessibility element’s focus state to the given state value.
- [AccessibilityFocusState](/documentation/swiftui/accessibilityfocusstate) A property wrapper type that can read and write a value that SwiftUI updates as the focus of any active accessibility technology, such as VoiceOver, changes.

## Managing interactivity

- [accessibilityRespondsToUserInteraction(_:)](/documentation/swiftui/view/accessibilityrespondstouserinteraction(_:)) Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.
- [accessibilityRespondsToUserInteraction(_:isEnabled:)](/documentation/swiftui/view/accessibilityrespondstouserinteraction(_:isenabled:)) Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.

## Accessibility

- [Accessibility fundamentals](/documentation/swiftui/accessibility-fundamentals)
- [Accessible appearance](/documentation/swiftui/accessible-appearance)
- [Accessible descriptions](/documentation/swiftui/accessible-descriptions)
- [Accessible navigation](/documentation/swiftui/accessible-navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
