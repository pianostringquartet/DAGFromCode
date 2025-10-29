---
title: subscript(_:)
description: Retrieves an event using its unique identifier.
source: https://developer.apple.com/documentation/swiftui/spatialeventcollection/subscript(_:)
timestamp: 2025-10-29T00:11:34.651Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spatialeventcollection](/documentation/swiftui/spatialeventcollection)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+, watchOS 11.0+

> Retrieves an event using its unique identifier.

```swift
subscript(index: SpatialEventCollection.Event.ID) -> SpatialEventCollection.Event? { get }
```

## Overview

Returns `nil` if the `Event` no longer exists in the collection.

## Accessing the collection’s events

- [SpatialEventCollection.Event](/documentation/swiftui/spatialeventcollection/event)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
