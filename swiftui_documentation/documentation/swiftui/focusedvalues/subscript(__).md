---
title: subscript(_:)
description: Reads and writes values associated with a given focused value key.
source: https://developer.apple.com/documentation/swiftui/focusedvalues/subscript(_:)
timestamp: 2025-10-29T00:11:09.273Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedvalues](/documentation/swiftui/focusedvalues)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Reads and writes values associated with a given focused value key.

```swift
subscript<Key>(key: Key.Type) -> Key.Value? where Key : FocusedValueKey { get set }
```

## Overview

Use this subscript to get or set a focused value for a custom [Focused Value Key](/documentation/swiftui/focusedvaluekey). In most cases, you’ll use the `Entry` macro to create focused value properties, which automatically generates the appropriate key and uses this subscript internally:

```swift
extension FocusedValues {
    @Entry var myCustomValue: MyType?
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
