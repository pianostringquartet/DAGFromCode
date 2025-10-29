---
title: focusedValue(_:_:)
description: Modifies this view by injecting a value that you provide for use by other views whose state depends on the focused view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/focusedvalue(_:_:)
timestamp: 2025-10-29T00:12:24.978Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusedValue(_:_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Modifies this view by injecting a value that you provide for use by other views whose state depends on the focused view hierarchy.

```swift
nonisolated func focusedValue<Value>(_ keyPath: WritableKeyPath<FocusedValues, Value?>, _ value: Value) -> some View
```

## Parameters

**keyPath**

The key path to associate `value` with when adding it to the existing table of exported focus values.



**value**

The focus value to export.



## Return Value

A modified representation of this view.

## Exposing value types to focused views

- [focusedValue(_:)](/documentation/swiftui/view/focusedvalue(_:))
- [focusedSceneValue(_:)](/documentation/swiftui/view/focusedscenevalue(_:))
- [focusedSceneValue(_:_:)](/documentation/swiftui/view/focusedscenevalue(_:_:))
- [FocusedValues](/documentation/swiftui/focusedvalues)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
