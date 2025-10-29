---
title: Animations
description: Create smooth visual updates in response to state changes.
source: https://developer.apple.com/documentation/swiftui/animations
timestamp: 2025-10-29T00:15:27.824Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Animations

> Create smooth visual updates in response to state changes.

## Overview

You tell SwiftUI how to draw your app’s user interface for different states, and then rely on SwiftUI to make interface updates when the state changes.



To avoid abrupt visual transitions when the state changes, add animation in one of the following ways:

- Animate all of the visual changes for a state change by changing the state inside a call to the [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:)) global function.
- Add animation to a particular view when a specific value changes by applying the [animation(_:value:)](/documentation/swiftui/view/animation(_:value:)) view modifier to the view.
- Animate changes to a [Binding](/documentation/swiftui/binding) by using the binding’s [animation(_:)](/documentation/swiftui/binding/animation(_:)) method.

SwiftUI animates the effects that many built-in view modifiers produce, like those that set a scale or opacity value. You can animate other values by making your custom views conform to the [Animatable](/documentation/swiftui/animatable) protocol, and telling SwiftUI about the value you want to animate.

When an animated state change results in adding or removing a view to or from the view hierarchy, you can tell SwiftUI how to transition the view into or out of place using built-in transitions that [Any Transition](/documentation/swiftui/anytransition) defines, like [slide](/documentation/swiftui/anytransition/slide) or [scale](/documentation/swiftui/anytransition/scale). You can also create custom transitions.

For design guidance, see [motion](/design/Human-Interface-Guidelines/motion) in the Human Interface Guidelines.

## Adding state-based animation to an action

- [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:)) Returns the result of recomputing the view’s body with the provided animation.
- [withAnimation(_:completionCriteria:_:completion:)](/documentation/swiftui/withanimation(_:completioncriteria:_:completion:)) Returns the result of recomputing the view’s body with the provided animation, and runs the completion when all animations are complete.
- [AnimationCompletionCriteria](/documentation/swiftui/animationcompletioncriteria) The criteria that determines when an animation is considered finished.
- [Animation](/documentation/swiftui/animation) The way a view changes over time to create a smooth visual transition from one state to another.

## Adding state-based animation to a view

- [animation(_:)](/documentation/swiftui/view/animation(_:)) Applies the given animation to this view when this view changes.
- [animation(_:value:)](/documentation/swiftui/view/animation(_:value:)) Applies the given animation to this view when the specified value changes.
- [animation(_:body:)](/documentation/swiftui/view/animation(_:body:)) Applies the given animation to all animatable values within the  closure.

## Creating phase-based animation

- [Controlling the timing and movements of your animations](/documentation/swiftui/controlling-the-timing-and-movements-of-your-animations) Build sophisticated animations that you control using phase and keyframe animators.
- [phaseAnimator(_:content:animation:)](/documentation/swiftui/view/phaseanimator(_:content:animation:)) Animates effects that you apply to a view over a sequence of phases that change continuously.
- [phaseAnimator(_:trigger:content:animation:)](/documentation/swiftui/view/phaseanimator(_:trigger:content:animation:)) Animates effects that you apply to a view over a sequence of phases that change based on a trigger.
- [PhaseAnimator](/documentation/swiftui/phaseanimator) A container that animates its content by automatically cycling through a collection of phases that you provide, each defining a discrete step within an animation.

## Creating keyframe-based animation

- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:)) Loops the given keyframes continuously, updating the view using the modifiers you apply in .
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:)) Plays the given keyframes when the given trigger value changes, updating the view using the modifiers you apply in .
- [KeyframeAnimator](/documentation/swiftui/keyframeanimator) A container that animates its content with keyframes.
- [Keyframes](/documentation/swiftui/keyframes) A type that defines changes to a value over time.
- [KeyframeTimeline](/documentation/swiftui/keyframetimeline) A description of how a value changes over time, modeled using keyframes.
- [KeyframeTrack](/documentation/swiftui/keyframetrack) A sequence of keyframes animating a single property of a root type.
- [KeyframeTrackContentBuilder](/documentation/swiftui/keyframetrackcontentbuilder) The builder that creates keyframe track content from the keyframes that you define within a closure.
- [KeyframesBuilder](/documentation/swiftui/keyframesbuilder) A builder that combines keyframe content values into a single value.
- [KeyframeTrackContent](/documentation/swiftui/keyframetrackcontent) A group of keyframes that define an interpolation curve of an animatable value.
- [CubicKeyframe](/documentation/swiftui/cubickeyframe) A keyframe that uses a cubic curve to smoothly interpolate between values.
- [LinearKeyframe](/documentation/swiftui/linearkeyframe) A keyframe that uses simple linear interpolation.
- [MoveKeyframe](/documentation/swiftui/movekeyframe) A keyframe that immediately moves to the given value without interpolating.
- [SpringKeyframe](/documentation/swiftui/springkeyframe) A keyframe that uses a spring function to interpolate to the given value.

## Creating custom animations

- [CustomAnimation](/documentation/swiftui/customanimation) A type that defines how an animatable value changes over time.
- [AnimationContext](/documentation/swiftui/animationcontext) Contextual values that a custom animation can use to manage state and access a view’s environment.
- [AnimationState](/documentation/swiftui/animationstate) A container that stores the state for a custom animation.
- [AnimationStateKey](/documentation/swiftui/animationstatekey) A key for accessing animation state values.
- [UnitCurve](/documentation/swiftui/unitcurve) A  function defined by a two-dimensional curve that maps an input progress in the range [0,1] to an output progress that is also in the range [0,1]. By changing the shape of the curve, the effective speed of an animation or other interpolation can be changed.
- [Spring](/documentation/swiftui/spring) A representation of a spring’s motion.

## Making data animatable

- [Animatable](/documentation/swiftui/animatable) A type that describes how to animate a property of a view.
- [AnimatableValues](/documentation/swiftui/animatablevalues)
- [AnimatablePair](/documentation/swiftui/animatablepair) A pair of animatable values, which is itself animatable.
- [VectorArithmetic](/documentation/swiftui/vectorarithmetic) A type that can serve as the animatable data of an animatable type.
- [EmptyAnimatableData](/documentation/swiftui/emptyanimatabledata) An empty type for animatable data.

## Updating a view on a schedule

- [Updating watchOS apps with timelines](/documentation/watchOS-Apps/updating-watchos-apps-with-timelines) Seamlessly schedule updates to your user interface, even while it’s inactive.
- [TimelineView](/documentation/swiftui/timelineview) A view that updates according to a schedule that you provide.
- [TimelineSchedule](/documentation/swiftui/timelineschedule) A type that provides a sequence of dates for use as a schedule.
- [TimelineViewDefaultContext](/documentation/swiftui/timelineviewdefaultcontext) Information passed to a timeline view’s content callback.

## Synchronizing geometries

- [matchedGeometryEffect(id:in:properties:anchor:isSource:)](/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:)) Defines a group of views with synchronized geometry using an identifier and namespace that you provide.
- [MatchedGeometryProperties](/documentation/swiftui/matchedgeometryproperties) A set of view properties that may be synchronized between views using the  function.
- [GeometryEffect](/documentation/swiftui/geometryeffect) An effect that changes the visual appearance of a view, largely without changing its ancestors or descendants.
- [Namespace](/documentation/swiftui/namespace) A dynamic property type that allows access to a namespace defined by the persistent identity of the object containing the property (e.g. a view).
- [geometryGroup()](/documentation/swiftui/view/geometrygroup()) Isolates the geometry (e.g. position and size) of the view from its parent view.

## Defining transitions

- [transition(_:)](/documentation/swiftui/view/transition(_:)) Associates a transition with the view.
- [Transition](/documentation/swiftui/transition) A description of view changes to apply when a view is added to and removed from the view hierarchy.
- [TransitionProperties](/documentation/swiftui/transitionproperties) The properties a  can have.
- [TransitionPhase](/documentation/swiftui/transitionphase) An indication of which the current stage of a transition.
- [AsymmetricTransition](/documentation/swiftui/asymmetrictransition) A composite  that uses a different transition for insertion versus removal.
- [AnyTransition](/documentation/swiftui/anytransition) A type-erased transition.
- [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:)) Modifies the view to use a given transition as its method of animating changes to the contents of its views.
- [contentTransition](/documentation/swiftui/environmentvalues/contenttransition) The current method of animating the contents of views.
- [contentTransitionAddsDrawingGroup](/documentation/swiftui/environmentvalues/contenttransitionaddsdrawinggroup) A Boolean value that controls whether views that render content transitions use GPU-accelerated rendering.
- [ContentTransition](/documentation/swiftui/contenttransition) A kind of transition that applies to the content within a single view, rather than to the insertion or removal of a view.
- [PlaceholderContentView](/documentation/swiftui/placeholdercontentview) A placeholder used to construct an inline modifier, transition, or other helper type.
- [navigationTransition(_:)](/documentation/swiftui/view/navigationtransition(_:)) Sets the navigation transition style for this view.
- [NavigationTransition](/documentation/swiftui/navigationtransition) A type that defines the transition to use when navigating to a view.
- [matchedTransitionSource(id:in:)](/documentation/swiftui/view/matchedtransitionsource(id:in:)) Identifies this view as the source of a navigation transition, such as a zoom transition.
- [matchedTransitionSource(id:in:configuration:)](/documentation/swiftui/view/matchedtransitionsource(id:in:configuration:)) Identifies this view as the source of a navigation transition, such as a zoom transition.
- [MatchedTransitionSourceConfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration) A configuration that defines the appearance of a matched transition source.
- [EmptyMatchedTransitionSourceConfiguration](/documentation/swiftui/emptymatchedtransitionsourceconfiguration) An unstyled matched transition source configuration.

## Moving an animation to another view

- [withTransaction(_:_:)](/documentation/swiftui/withtransaction(_:_:)) Executes a closure with the specified transaction and returns the result.
- [withTransaction(_:_:_:)](/documentation/swiftui/withtransaction(_:_:_:)) Executes a closure with the specified transaction key path and value and returns the result.
- [transaction(_:)](/documentation/swiftui/view/transaction(_:)) Applies the given transaction mutation function to all animations used within the view.
- [transaction(value:_:)](/documentation/swiftui/view/transaction(value:_:)) Applies the given transaction mutation function to all animations used within the view.
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:)) Applies the given transaction mutation function to all animations used within the  closure.
- [Transaction](/documentation/swiftui/transaction) The context of the current state-processing update.
- [Entry()](/documentation/swiftui/entry()) Creates an environment values, transaction, container values, or focused values entry.
- [TransactionKey](/documentation/swiftui/transactionkey) A key for accessing values in a transaction.

## Deprecated types

- [AnimatableModifier](/documentation/swiftui/animatablemodifier) A modifier that can create another modifier with animation.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [View styles](/documentation/swiftui/view-styles)
- [Text input and output](/documentation/swiftui/text-input-and-output)
- [Images](/documentation/swiftui/images)
- [Controls and indicators](/documentation/swiftui/controls-and-indicators)
- [Menus and commands](/documentation/swiftui/menus-and-commands)
- [Shapes](/documentation/swiftui/shapes)
- [Drawing and graphics](/documentation/swiftui/drawing-and-graphics)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
