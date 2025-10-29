---
title: State modifiers
description: Access storage and provide child views with configuration data.
source: https://developer.apple.com/documentation/swiftui/view-state
timestamp: 2025-10-29T00:13:30.296Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# State modifiers

> Access storage and provide child views with configuration data.

## Overview

SwiftUI provides tools for managing data in your app. For example, you can store values and objects in an environment that’s shared among the views in a view hierarchy. Any view that shares the environment — typically all the descendant views of the view that stores the item — can then access the stored item.

For more information about the types that SwiftUI provides to help manage data in your app, see [Model](/documentation/swiftui/model-data).

## Identity

- [tag(_:includeOptional:)](/documentation/swiftui/view/tag(_:includeoptional:)) Sets the unique tag value of this view.
- [id(_:)](/documentation/swiftui/view/id(_:)) Binds a view’s identity to the given proxy value.
- [equatable()](/documentation/swiftui/view/equatable()) Prevents the view from updating its child view when its new value is the same as its old value.

## Environment values

- [environment(_:)](/documentation/swiftui/view/environment(_:)) Places an observable object in the view’s environment.
- [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) Sets the environment value of the specified key path to the given value.
- [environmentObject(_:)](/documentation/swiftui/view/environmentobject(_:)) Supplies an observable object to a view’s hierarchy.
- [transformEnvironment(_:transform:)](/documentation/swiftui/view/transformenvironment(_:transform:)) Transforms the environment value of the specified key path with the given function.

## Preferences

- [preference(key:value:)](/documentation/swiftui/view/preference(key:value:)) Sets a value for the given preference.
- [transformPreference(_:_:)](/documentation/swiftui/view/transformpreference(_:_:)) Applies a transformation to a preference value.
- [anchorPreference(key:value:transform:)](/documentation/swiftui/view/anchorpreference(key:value:transform:)) Sets a value for the specified preference key, the value is a function of a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.
- [transformAnchorPreference(key:value:transform:)](/documentation/swiftui/view/transformanchorpreference(key:value:transform:)) Sets a value for the specified preference key, the value is a function of the key’s current value and a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.
- [onPreferenceChange(_:perform:)](/documentation/swiftui/view/onpreferencechange(_:perform:)) Adds an action to perform when the specified preference key’s value changes.
- [backgroundPreferenceValue(_:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as the background of the original view.
- [backgroundPreferenceValue(_:alignment:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:alignment:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as the background of the original view.
- [overlayPreferenceValue(_:_:)](/documentation/swiftui/view/overlaypreferencevalue(_:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.
- [overlayPreferenceValue(_:alignment:_:)](/documentation/swiftui/view/overlaypreferencevalue(_:alignment:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.

## Default storage

- [defaultAppStorage(_:)](/documentation/swiftui/view/defaultappstorage(_:)) The default store used by  contained within the view.

## Configuring a model

- [modelContext(_:)](/documentation/swiftui/view/modelcontext(_:)) Sets the model context in this view’s environment.
- [modelContainer(_:)](/documentation/swiftui/view/modelcontainer(_:)) Sets the model container and associated model context in this view’s environment.
- [modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)](/documentation/swiftui/view/modelcontainer(for:inmemory:isautosaveenabled:isundoenabled:onsetup:)) Sets the model container in this view for storing the provided model type, creating a new container if necessary, and also sets a model context for that container in this view’s environment.

## Providing interactivity

- [Input and event modifiers](/documentation/swiftui/view-input-and-events)
- [Search modifiers](/documentation/swiftui/view-search)
- [Presentation modifiers](/documentation/swiftui/view-presentation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
