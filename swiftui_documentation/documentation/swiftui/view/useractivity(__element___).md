---
title: userActivity(_:element:_:)
description: Advertises a user activity type.
source: https://developer.apple.com/documentation/swiftui/view/useractivity(_:element:_:)
timestamp: 2025-10-29T00:10:50.137Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# userActivity(_:element:_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Advertises a user activity type.

```swift
nonisolated func userActivity<P>(_ activityType: String, element: P?, _ update: @escaping (P, NSUserActivity) -> ()) -> some View
```

## Parameters

**activityType**

The type of activity to advertise.



**element**

If the element is `nil`, the handler will not be associated with the activity (and if there are no handlers, no activity is advertised). The method passes the non-`nil` element to the handler as a convenience so the handlers don’t all need to implement an early exit with `guard element = element else { return }`.



**update**

A function that modifies the passed-in activity for advertisement.



## Discussion

The scope of the activity applies only to the scene or window the view is in.

## Sending and receiving user activities

- [Restoring your app’s state with SwiftUI](/documentation/swiftui/restoring-your-app-s-state-with-swiftui)
- [userActivity(_:isActive:_:)](/documentation/swiftui/view/useractivity(_:isactive:_:))
- [onContinueUserActivity(_:perform:)](/documentation/swiftui/view/oncontinueuseractivity(_:perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
