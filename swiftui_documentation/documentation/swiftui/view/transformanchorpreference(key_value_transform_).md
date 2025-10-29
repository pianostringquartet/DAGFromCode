---
title: transformAnchorPreference(key:value:transform:)
description: Sets a value for the specified preference key, the value is a function of the key’s current value and a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.
source: https://developer.apple.com/documentation/swiftui/view/transformanchorpreference(key:value:transform:)
timestamp: 2025-10-29T00:13:33.691Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# transformAnchorPreference(key:value:transform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets a value for the specified preference key, the value is a function of the key’s current value and a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.

```swift
nonisolated func transformAnchorPreference<A, K>(key _: K.Type = K.self, value: Anchor<A>.Source, transform: @escaping (inout K.Value, Anchor<A>) -> Void) -> some View where K : PreferenceKey
```

## Parameters

**key**

The preference key type.



**value**

The geometry value in the current coordinate space.



**transform**

The function to produce the preference value.



## Return Value

A new version of the view that writes the preference.

## Setting preferences based on geometry

- [anchorPreference(key:value:transform:)](/documentation/swiftui/view/anchorpreference(key:value:transform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
