---
title: View fundamentals
description: Define the visual elements of your app using a hierarchy of views.
source: https://developer.apple.com/documentation/swiftui/view-fundamentals
timestamp: 2025-10-29T00:09:58.038Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# View fundamentals

> Define the visual elements of your app using a hierarchy of views.

## Overview

Views are the building blocks that you use to declare your app’s user interface. Each view contains a description of what to display for a given state. Every bit of your app that’s visible to the user derives from the description in a view, and any type that conforms to the [View](/documentation/swiftui/view) protocol can act as a view in your app.



Compose a custom view by combining built-in views that SwiftUI provides with other custom views that you create in your view’s [body](/documentation/swiftui/view/body-8kl5o) computed property. Configure views using the view modifiers that SwiftUI provides, or by defining your own view modifiers using the [View Modifier](/documentation/swiftui/viewmodifier) protocol and the [modifier(_:)](/documentation/swiftui/view/modifier(_:)) method.

## Creating a view

- [Declaring a custom view](/documentation/swiftui/declaring-a-custom-view) Define views and assemble them into a view hierarchy.
- [View](/documentation/swiftui/view) A type that represents part of your app’s user interface and provides modifiers that you use to configure views.
- [ViewBuilder](/documentation/swiftui/viewbuilder) A custom parameter attribute that constructs views from closures.

## Modifying a view

- [Configuring views](/documentation/swiftui/configuring-views) Adjust the characteristics of a view by applying view modifiers.
- [Reducing view modifier maintenance](/documentation/swiftui/reducing-view-modifier-maintenance) Bundle view modifiers that you regularly reuse into a custom view modifier.
- [modifier(_:)](/documentation/swiftui/view/modifier(_:)) Applies a modifier to a view and returns a new view.
- [ViewModifier](/documentation/swiftui/viewmodifier) A modifier that you apply to a view or another view modifier, producing a different version of the original value.
- [EmptyModifier](/documentation/swiftui/emptymodifier) An empty, or identity, modifier, used during development to switch modifiers at compile time.
- [ModifiedContent](/documentation/swiftui/modifiedcontent) A value with a modifier applied to it.
- [EnvironmentalModifier](/documentation/swiftui/environmentalmodifier) A modifier that must resolve to a concrete modifier in an environment before use.
- [ManipulableModifier](/documentation/swiftui/manipulablemodifier)
- [ManipulableResponderModifier](/documentation/swiftui/manipulablerespondermodifier)
- [ManipulableTransformBindingModifier](/documentation/swiftui/manipulabletransformbindingmodifier)
- [ManipulationGeometryModifier](/documentation/swiftui/manipulationgeometrymodifier)
- [ManipulationGestureModifier](/documentation/swiftui/manipulationgesturemodifier)
- [ManipulationUsingGestureStateModifier](/documentation/swiftui/manipulationusinggesturestatemodifier)
- [Manipulable](/documentation/swiftui/manipulable) A namespace for various manipulable related types.

## Responding to view life cycle updates

- [onAppear(perform:)](/documentation/swiftui/view/onappear(perform:)) Adds an action to perform before this view appears.
- [onDisappear(perform:)](/documentation/swiftui/view/ondisappear(perform:)) Adds an action to perform after this view disappears.
- [task(priority:_:)](/documentation/swiftui/view/task(priority:_:)) Adds an asynchronous task to perform before this view appears.
- [task(id:priority:_:)](/documentation/swiftui/view/task(id:priority:_:)) Adds a task to perform before this view appears or when a specified value changes.

## Managing the view hierarchy

- [id(_:)](/documentation/swiftui/view/id(_:)) Binds a view’s identity to the given proxy value.
- [tag(_:includeOptional:)](/documentation/swiftui/view/tag(_:includeoptional:)) Sets the unique tag value of this view.
- [equatable()](/documentation/swiftui/view/equatable()) Prevents the view from updating its child view when its new value is the same as its old value.

## Supporting view types

- [AnyView](/documentation/swiftui/anyview) A type-erased view.
- [EmptyView](/documentation/swiftui/emptyview) A view that doesn’t contain any content.
- [EquatableView](/documentation/swiftui/equatableview) A view type that compares itself against its previous value and prevents its child updating if its new value is the same as its old value.
- [SubscriptionView](/documentation/swiftui/subscriptionview) A view that subscribes to a publisher with an action.
- [TupleView](/documentation/swiftui/tupleview) A View created from a swift tuple of View values.

## Views

- [View configuration](/documentation/swiftui/view-configuration)
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
