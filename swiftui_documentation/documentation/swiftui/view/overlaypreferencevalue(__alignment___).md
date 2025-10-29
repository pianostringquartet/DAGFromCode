---
title: overlayPreferenceValue(_:alignment:_:)
description: Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.
source: https://developer.apple.com/documentation/swiftui/view/overlaypreferencevalue(_:alignment:_:)
timestamp: 2025-10-29T00:12:55.506Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# overlayPreferenceValue(_:alignment:_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.

```swift
nonisolated func overlayPreferenceValue<K, V>(_ key: K.Type, alignment: Alignment = .center, @ViewBuilder _ transform: @escaping (K.Value) -> V) -> some View where K : PreferenceKey, V : View
```

## Parameters

**key**

The preference key type whose value is to be read.



**alignment**

An optional alignment to use when positioning the overlay view relative to the original view.



**transform**

A function that produces the overlay view from the preference value read from the original view.



## Return Value

A view that layers a second view in front of the view.

## Discussion

The values of the preference key from both views are combined and made visible to the parent view.

## Generating backgrounds and overlays from preferences

- [backgroundPreferenceValue(_:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:_:))
- [backgroundPreferenceValue(_:alignment:_:)](/documentation/swiftui/view/backgroundpreferencevalue(_:alignment:_:))
- [overlayPreferenceValue(_:_:)](/documentation/swiftui/view/overlaypreferencevalue(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
