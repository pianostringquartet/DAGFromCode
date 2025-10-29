---
title: ModifiedContent
description: A value with a modifier applied to it.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent
timestamp: 2025-10-29T00:14:12.591Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ModifiedContent

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A value with a modifier applied to it.

```swift
@frozen struct ModifiedContent<Content, Modifier>
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Chart3DContent](/documentation/Charts/Chart3DContent)
- [Copyable](/documentation/Swift/Copyable)
- [CustomHoverEffect](/documentation/swiftui/customhovereffect)
- [DynamicMapContent](/documentation/MapKit/DynamicMapContent)
- [DynamicTableRowContent](/documentation/swiftui/dynamictablerowcontent)
- [DynamicViewContent](/documentation/swiftui/dynamicviewcontent)
- [Equatable](/documentation/Swift/Equatable)
- [HoverEffectContent](/documentation/swiftui/hovereffectcontent)
- [MapContent](/documentation/MapKit/MapContent)
- [Scene](/documentation/swiftui/scene)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [View](/documentation/swiftui/view)
- [ViewModifier](/documentation/swiftui/viewmodifier)
- [VisualEffect](/documentation/swiftui/visualeffect)

## Creating a modified content view

- [init(content:modifier:)](/documentation/swiftui/modifiedcontent/init(content:modifier:)) A structure that defines the content and modifier needed to produce a new view or view modifier.
- [content](/documentation/swiftui/modifiedcontent/content) The content that the modifier transforms into a new view or new view modifier.
- [modifier](/documentation/swiftui/modifiedcontent/modifier) The view modifier.

## Instance Methods

- [accessibility(activationPoint:)](/documentation/swiftui/modifiedcontent/accessibility(activationpoint:)) Specifies the point where activations occur in the view.
- [accessibility(addTraits:)](/documentation/swiftui/modifiedcontent/accessibility(addtraits:)) Adds the given traits to the view.
- [accessibility(hidden:)](/documentation/swiftui/modifiedcontent/accessibility(hidden:)) Specifies whether to hide this view from system accessibility features.
- [accessibility(hint:)](/documentation/swiftui/modifiedcontent/accessibility(hint:)) Communicates to the user what happens after performing the view’s action.
- [accessibility(identifier:)](/documentation/swiftui/modifiedcontent/accessibility(identifier:)) Uses the specified string to identify the view.
- [accessibility(inputLabels:)](/documentation/swiftui/modifiedcontent/accessibility(inputlabels:)) Sets alternate input labels with which users identify a view.
- [accessibility(label:)](/documentation/swiftui/modifiedcontent/accessibility(label:)) Adds a label to the view that describes its contents.
- [accessibility(removeTraits:)](/documentation/swiftui/modifiedcontent/accessibility(removetraits:)) Removes the given traits from this view.
- [accessibility(selectionIdentifier:)](/documentation/swiftui/modifiedcontent/accessibility(selectionidentifier:)) Sets a selection identifier for this view’s accessibility element.
- [accessibility(sortPriority:)](/documentation/swiftui/modifiedcontent/accessibility(sortpriority:)) Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.
- [accessibility(value:)](/documentation/swiftui/modifiedcontent/accessibility(value:)) Adds a textual description of the value that the view contains.
- [accessibilityAction(_:_:)](/documentation/swiftui/modifiedcontent/accessibilityaction(_:_:)) Adds an accessibility action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityAction(_:intent:)](/documentation/swiftui/modifiedcontent/accessibilityaction(_:intent:)) Adds an accessibility action representing  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.
- [accessibilityAction(named:_:)](/documentation/swiftui/modifiedcontent/accessibilityaction(named:_:)) Adds an accessibility action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityAction(named:intent:)](/documentation/swiftui/modifiedcontent/accessibilityaction(named:intent:)) Adds an accessibility action labeled  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.
- [accessibilityActivationPoint(_:)](/documentation/swiftui/modifiedcontent/accessibilityactivationpoint(_:)) The activation point for an element is the location assistive technologies use to initiate gestures.
- [accessibilityActivationPoint(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityactivationpoint(_:isenabled:)) The activation point for an element is the location assistive technologies use to initiate gestures.
- [accessibilityAddTraits(_:)](/documentation/swiftui/modifiedcontent/accessibilityaddtraits(_:)) Adds the given traits to the view.
- [accessibilityAdjustableAction(_:)](/documentation/swiftui/modifiedcontent/accessibilityadjustableaction(_:)) Adds an accessibility adjustable action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityCustomContent(_:_:importance:)](/documentation/swiftui/modifiedcontent/accessibilitycustomcontent(_:_:importance:)) Add additional accessibility information to the view.
- [accessibilityDirectTouch(_:options:)](/documentation/swiftui/modifiedcontent/accessibilitydirecttouch(_:options:)) Explicitly set whether this accessibility element is a direct touch area. Direct touch areas passthrough touch events to the app rather than being handled through an assistive technology, such as VoiceOver. The modifier accepts an optional  option set to customize the functionality of the direct touch area.
- [accessibilityDragPoint(_:description:)](/documentation/swiftui/modifiedcontent/accessibilitydragpoint(_:description:)) The point an assistive technology should use to begin a drag interaction.
- [accessibilityDragPoint(_:description:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilitydragpoint(_:description:isenabled:)) The point an assistive technology should use to begin a drag interaction.
- [accessibilityDropPoint(_:description:)](/documentation/swiftui/modifiedcontent/accessibilitydroppoint(_:description:)) The point an assistive technology should use to end a drag interaction.
- [accessibilityDropPoint(_:description:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilitydroppoint(_:description:isenabled:)) The point an assistive technology should use to end a drag interaction.
- [accessibilityHeading(_:)](/documentation/swiftui/modifiedcontent/accessibilityheading(_:)) Set the level of this heading.
- [accessibilityHidden(_:)](/documentation/swiftui/modifiedcontent/accessibilityhidden(_:)) Specifies whether to hide this view from system accessibility features.
- [accessibilityHidden(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityhidden(_:isenabled:)) Specifies whether to hide this view from system accessibility features.
- [accessibilityHint(_:)](/documentation/swiftui/modifiedcontent/accessibilityhint(_:)) Communicates to the user what happens after performing the view’s action.
- [accessibilityHint(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityhint(_:isenabled:)) Communicates to the user what happens after performing the view’s action.
- [accessibilityIdentifier(_:)](/documentation/swiftui/modifiedcontent/accessibilityidentifier(_:)) Uses the string you specify to identify the view.
- [accessibilityIdentifier(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityidentifier(_:isenabled:)) Uses the string you specify to identify the view.
- [accessibilityInputLabels(_:)](/documentation/swiftui/modifiedcontent/accessibilityinputlabels(_:)) Sets alternate input labels with which users identify a view.
- [accessibilityInputLabels(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityinputlabels(_:isenabled:)) Sets alternate input labels with which users identify a view.
- [accessibilityLabel(_:)](/documentation/swiftui/modifiedcontent/accessibilitylabel(_:)) Adds a label to the view that describes its contents.
- [accessibilityLabel(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilitylabel(_:isenabled:)) Adds a label to the view that describes its contents.
- [accessibilityRemoveTraits(_:)](/documentation/swiftui/modifiedcontent/accessibilityremovetraits(_:)) Removes the given traits from this view.
- [accessibilityRespondsToUserInteraction(_:)](/documentation/swiftui/modifiedcontent/accessibilityrespondstouserinteraction(_:)) Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.
- [accessibilityRespondsToUserInteraction(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityrespondstouserinteraction(_:isenabled:)) Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.
- [accessibilityScrollAction(_:)](/documentation/swiftui/modifiedcontent/accessibilityscrollaction(_:)) Adds an accessibility scroll action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
- [accessibilityScrollStatus(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityscrollstatus(_:isenabled:)) Changes the announcement provided by accessibility technologies when a user scrolls a scroll view within this view.
- [accessibilitySortPriority(_:)](/documentation/swiftui/modifiedcontent/accessibilitysortpriority(_:)) Sets the sort priority order for this view’s accessibility element, relative to other elements at the same level.
- [accessibilityTextContentType(_:)](/documentation/swiftui/modifiedcontent/accessibilitytextcontenttype(_:)) Sets an accessibility text content type.
- [accessibilityValue(_:)](/documentation/swiftui/modifiedcontent/accessibilityvalue(_:)) Adds a textual description of the value that the view contains.
- [accessibilityValue(_:isEnabled:)](/documentation/swiftui/modifiedcontent/accessibilityvalue(_:isenabled:)) Adds a textual description of the value that the view contains.
- [accessibilityZoomAction(_:)](/documentation/swiftui/modifiedcontent/accessibilityzoomaction(_:)) Adds an accessibility zoom action to the view. Actions allow assistive technologies, such as VoiceOver, to interact with the view by invoking the action.

## Modifying a view

- [Configuring views](/documentation/swiftui/configuring-views)
- [Reducing view modifier maintenance](/documentation/swiftui/reducing-view-modifier-maintenance)
- [modifier(_:)](/documentation/swiftui/view/modifier(_:))
- [ViewModifier](/documentation/swiftui/viewmodifier)
- [EmptyModifier](/documentation/swiftui/emptymodifier)
- [EnvironmentalModifier](/documentation/swiftui/environmentalmodifier)
- [ManipulableModifier](/documentation/swiftui/manipulablemodifier)
- [ManipulableResponderModifier](/documentation/swiftui/manipulablerespondermodifier)
- [ManipulableTransformBindingModifier](/documentation/swiftui/manipulabletransformbindingmodifier)
- [ManipulationGeometryModifier](/documentation/swiftui/manipulationgeometrymodifier)
- [ManipulationGestureModifier](/documentation/swiftui/manipulationgesturemodifier)
- [ManipulationUsingGestureStateModifier](/documentation/swiftui/manipulationusinggesturestatemodifier)
- [Manipulable](/documentation/swiftui/manipulable)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
