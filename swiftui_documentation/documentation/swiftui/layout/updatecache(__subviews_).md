---
title: updateCache(_:subviews:)
description: Updates the layout’s cache when something changes.
source: https://developer.apple.com/documentation/swiftui/layout/updatecache(_:subviews:)
timestamp: 2025-10-29T00:12:45.346Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Instance Method**

# updateCache(_:subviews:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Updates the layout’s cache when something changes.

```swift
func updateCache(_ cache: inout Self.Cache, subviews: Self.Subviews)
```

## Parameters

**cache**

Storage for calculated data that you share among the methods of your custom layout container.



**subviews**

A collection of proxy instances that represent the views arranged by the container. You can use the proxies in the collection to get information about the subviews as you calculate values to store in the cache.



## Discussion

If your custom layout container creates a cache by implementing the [makeCache(subviews:)](/documentation/swiftui/layout/makecache(subviews:)) method, SwiftUI calls the update method when your layout or its subviews change, giving you an opportunity to modify or invalidate the contents of the cache. The method’s default implementation recreates the cache by calling the [makeCache(subviews:)](/documentation/swiftui/layout/makecache(subviews:)) method, but you can provide your own implementation to take an incremental approach, if appropriate.

## Managing a cache

- [makeCache(subviews:)](/documentation/swiftui/layout/makecache(subviews:))
- [Cache](/documentation/swiftui/layout/cache)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
