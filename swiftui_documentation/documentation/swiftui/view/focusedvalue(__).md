---
title: focusedValue(_:)
description: Sets the focused value for the given object type.
source: https://developer.apple.com/documentation/swiftui/view/focusedvalue(_:)
timestamp: 2025-10-29T00:14:05.986Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusedValue(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the focused value for the given object type.

```swift
nonisolated func focusedValue<T>(_ object: T?) -> some View where T : AnyObject, T : Observable
```

## Discussion

> [!IMPORTANT]
> This initializer only accepts objects conforming to the `Observable` protocol. For reading environment objects that conform to `ObservableObject`, use `focusedObject(_:)`, instead.

To read this value, use the `FocusedValue` property wrapper.

## Exposing value types to focused views

- [focusedValue(_:_:)](/documentation/swiftui/view/focusedvalue(_:_:))
- [focusedSceneValue(_:)](/documentation/swiftui/view/focusedscenevalue(_:))
- [focusedSceneValue(_:_:)](/documentation/swiftui/view/focusedscenevalue(_:_:))
- [FocusedValues](/documentation/swiftui/focusedvalues)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
