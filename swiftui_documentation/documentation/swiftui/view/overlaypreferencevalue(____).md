---
title: overlayPreferenceValue(_:_:)
description: Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.
source: https://developer.apple.com/documentation/swiftui/view/overlaypreferencevalue(_:_:)
timestamp: 2025-10-29T00:12:26.998Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# overlayPreferenceValue(_:_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.

```swift
nonisolated func overlayPreferenceValue<Key, T>(_ key: Key.Type = Key.self, @ViewBuilder _ transform: @escaping (Key.Value) -> T) -> some View where Key : PreferenceKey, T : View
```

## Parameters

**key**

The preference key type whose value is to be read.



**transform**

A function that produces the overlay view from the preference value read from the original view.



## Return Value

A view that layers a second view in front of the view.

## Generating backgrounds and overlays from preferences

- [backgroundPreferenceValue(_:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:_:))
- [backgroundPreferenceValue(_:alignment:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:alignment:_:))
- [overlayPreferenceValue(_:alignment:_:)](/documentation/swiftui/view/overlaypreferencevalue(_:alignment:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
