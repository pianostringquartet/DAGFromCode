---
title: Preferences
description: Indicate configuration preferences from views to their container views.
source: https://developer.apple.com/documentation/swiftui/preferences
timestamp: 2025-10-29T00:11:26.034Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Preferences

> Indicate configuration preferences from views to their container views.

## Overview

Whereas you use the environment to configure the subviews of a view, you use preferences to send configuration information from subviews toward their container. However, unlike configuration information that flows down a view hierarchy from one container to many subviews, a single container needs to reconcile potentially conflicting preferences flowing up from its many subviews.



When you use the [Preference Key](/documentation/swiftui/preferencekey) protocol to define a custom preference, you indicate how to merge preferences from multiple subviews. You can then set a value for the preference on a view using the [preference(key:value:)](/documentation/swiftui/view/preference(key:value:)) view modifier. Many built-in modifiers, like [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:)), rely on preferences to send configuration information to their container.

## Setting preferences

- [preference(key:value:)](/documentation/swiftui/view/preference(key:value:)) Sets a value for the given preference.
- [transformPreference(_:_:)](/documentation/swiftui/view/transformpreference(_:_:)) Applies a transformation to a preference value.

## Creating custom preferences

- [PreferenceKey](/documentation/swiftui/preferencekey) A named value produced by a view.

## Setting preferences based on geometry

- [anchorPreference(key:value:transform:)](/documentation/swiftui/view/anchorpreference(key:value:transform:)) Sets a value for the specified preference key, the value is a function of a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.
- [transformAnchorPreference(key:value:transform:)](/documentation/swiftui/view/transformanchorpreference(key:value:transform:)) Sets a value for the specified preference key, the value is a function of the key’s current value and a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.

## Responding to changes in preferences

- [onPreferenceChange(_:perform:)](/documentation/swiftui/view/onpreferencechange(_:perform:)) Adds an action to perform when the specified preference key’s value changes.

## Generating backgrounds and overlays from preferences

- [backgroundPreferenceValue(_:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as the background of the original view.
- [backgroundPreferenceValue(_:alignment:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:alignment:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as the background of the original view.
- [overlayPreferenceValue(_:_:)](/documentation/swiftui/view/overlaypreferencevalue(_:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.
- [overlayPreferenceValue(_:alignment:_:)](/documentation/swiftui/view/overlaypreferencevalue(_:alignment:_:)) Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.

## Data and storage

- [Model data](/documentation/swiftui/model-data)
- [Environment values](/documentation/swiftui/environment-values)
- [Persistent storage](/documentation/swiftui/persistent-storage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
