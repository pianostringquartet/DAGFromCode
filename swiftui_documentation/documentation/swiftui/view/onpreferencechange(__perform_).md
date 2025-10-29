---
title: onPreferenceChange(_:perform:)
description: Adds an action to perform when the specified preference key’s value changes.
source: https://developer.apple.com/documentation/swiftui/view/onpreferencechange(_:perform:)
timestamp: 2025-10-29T00:12:20.542Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onPreferenceChange(_:perform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform when the specified preference key’s value changes.

```swift
nonisolated func onPreferenceChange<K>(_ key: K.Type = K.self, perform action: @escaping (K.Value) -> Void) -> some View where K : PreferenceKey, K.Value : Equatable
```

## Parameters

**key**

The key to monitor for value changes.



**action**

The action to perform when the value for `key` changes. The `action` closure passes the new value as its parameter.



## Return Value

A view that triggers `action` when the value for `key` changes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
