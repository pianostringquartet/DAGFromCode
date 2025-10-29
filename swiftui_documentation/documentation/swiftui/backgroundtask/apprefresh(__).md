---
title: appRefresh(_:)
description: A task that updates your app’s state in the background for a matching identifier.
source: https://developer.apple.com/documentation/swiftui/backgroundtask/apprefresh(_:)
timestamp: 2025-10-29T00:14:14.959Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [backgroundtask](/documentation/swiftui/backgroundtask)

**Type Method**

# appRefresh(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A task that updates your app’s state in the background for a matching identifier.

```swift
static func appRefresh(_ identifier: String) -> BackgroundTask<Void, Void>
```

## Return Value

A background task that you can handle with your app or extension.

## Refreshing the app

- [appRefresh](/documentation/swiftui/backgroundtask/apprefresh)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
