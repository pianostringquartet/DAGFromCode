---
title: transformPreference(_:_:)
description: Applies a transformation to a preference value.
source: https://developer.apple.com/documentation/swiftui/view/transformpreference(_:_:)
timestamp: 2025-10-29T00:10:18.054Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# transformPreference(_:_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Applies a transformation to a preference value.

```swift
nonisolated func transformPreference<K>(_ key: K.Type = K.self, _ callback: @escaping (inout K.Value) -> Void) -> some View where K : PreferenceKey
```

## Setting preferences

- [preference(key:value:)](/documentation/swiftui/view/preference(key:value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
