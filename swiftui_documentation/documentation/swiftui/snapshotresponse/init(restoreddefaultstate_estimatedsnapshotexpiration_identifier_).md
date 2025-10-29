---
title: init(restoredDefaultState:estimatedSnapshotExpiration:identifier:)
description: Creates a snapshot response.
source: https://developer.apple.com/documentation/swiftui/snapshotresponse/init(restoreddefaultstate:estimatedsnapshotexpiration:identifier:)
timestamp: 2025-10-29T00:14:08.992Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [snapshotresponse](/documentation/swiftui/snapshotresponse)

**Initializer**

# init(restoredDefaultState:estimatedSnapshotExpiration:identifier:)

**Available on:** watchOS 9.0+

> Creates a snapshot response.

```swift
init(restoredDefaultState: Bool = false, estimatedSnapshotExpiration: Date? = nil, identifier: String? = nil)
```

## Parameters

**restoredDefaultState**

Pass `true` if your app has navigated back to its default launch scene.



**estimatedSnapshotExpiration**

The preferred date and time for the next background snapshot refresh task. Use [distant Future](/documentation/Foundation/Date/distantFuture) if you don’t want to schedule the next refresh.



**identifier**

A custom string to associate with the next background snapshot refresh task. This value is assigned to the next snapshot task’s `TaskData` userInfo property. Pass `nil` if you don’t want to associate any identifier with the next task.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
