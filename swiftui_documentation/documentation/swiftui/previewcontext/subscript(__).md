---
title: subscript(_:)
description: Returns the context’s value for a key, or a the key’s default value if the context doesn’t define a value for the key.
source: https://developer.apple.com/documentation/swiftui/previewcontext/subscript(_:)
timestamp: 2025-10-29T00:09:35.210Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [previewcontext](/documentation/swiftui/previewcontext)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Returns the context’s value for a key, or a the key’s default value if the context doesn’t define a value for the key.

```swift
subscript<Key>(key: Key.Type) -> Key.Value where Key : PreviewContextKey { get }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
