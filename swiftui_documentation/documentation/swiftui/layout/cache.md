---
title: Cache
description: Cached values associated with the layout instance.
source: https://developer.apple.com/documentation/swiftui/layout/cache
timestamp: 2025-10-29T00:14:29.711Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Associated Type**

# Cache

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Cached values associated with the layout instance.

```swift
associatedtype Cache = Void
```

## Discussion

If you create a cache for your custom layout, you can use a type alias to define this type as your data storage type. Alternatively, you can refer to the data storage type directly in all the places where you work with the cache.

See [makeCache(subviews:)](/documentation/swiftui/layout/makecache(subviews:)) for more information.

## Managing a cache

- [makeCache(subviews:)](/documentation/swiftui/layout/makecache(subviews:))
- [updateCache(_:subviews:)](/documentation/swiftui/layout/updatecache(_:subviews:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
