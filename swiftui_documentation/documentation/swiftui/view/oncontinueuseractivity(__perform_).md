---
title: onContinueUserActivity(_:perform:)
description: Registers a handler to invoke in response to a user activity that your app receives.
source: https://developer.apple.com/documentation/swiftui/view/oncontinueuseractivity(_:perform:)
timestamp: 2025-10-29T00:14:33.419Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onContinueUserActivity(_:perform:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Registers a handler to invoke in response to a user activity that your app receives.

```swift
nonisolated func onContinueUserActivity(_ activityType: String, perform action: @escaping (NSUserActivity) -> ()) -> some View
```

## Parameters

**activityType**

The type of activity that the `action` closure handles. Be sure that this string matches one of the values that you list in the [NSUser Activity Types](/documentation/BundleResources/Information-Property-List/NSUserActivityTypes) array in your app’s Information Property List.



**action**

A closure that SwiftUI calls when your app receives a user activity of the specified type. The closure takes the activity as an input parameter.



## Return Value

A view that handles incoming user activities.

## Discussion

Use this view modifier to receive [NSUser Activity](/documentation/Foundation/NSUserActivity) instances in a particular scene within your app. The scene that SwiftUI routes the incoming user activity to depends on the structure of your app, what scenes are active, and other configuration. For more information, see [handlesExternalEvents(matching:)](/documentation/swiftui/scene/handlesexternalevents(matching:)).

UI frameworks traditionally pass Universal Links to your app using a user activity. However, SwiftUI passes a Universal Link to your app directly as a URL. To receive a Universal Link, use the [onOpenURL(perform:)](/documentation/swiftui/view/onopenurl(perform:)) modifier instead.

## Sending and receiving user activities

- [Restoring your app’s state with SwiftUI](/documentation/swiftui/restoring-your-app-s-state-with-swiftui)
- [userActivity(_:element:_:)](/documentation/swiftui/view/useractivity(_:element:_:))
- [userActivity(_:isActive:_:)](/documentation/swiftui/view/useractivity(_:isactive:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
