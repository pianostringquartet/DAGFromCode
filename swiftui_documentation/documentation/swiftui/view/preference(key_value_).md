---
title: preference(key:value:)
description: Sets a value for the given preference.
source: https://developer.apple.com/documentation/swiftui/view/preference(key:value:)
timestamp: 2025-10-29T00:12:46.959Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# preference(key:value:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets a value for the given preference.

```swift
nonisolated func preference<K>(key: K.Type = K.self, value: K.Value) -> some View where K : PreferenceKey
```

## Setting preferences

- [transformPreference(_:_:)](/documentation/swiftui/view/transformpreference(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
