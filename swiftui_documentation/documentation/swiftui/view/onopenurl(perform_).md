---
title: onOpenURL(perform:)
description: Registers a handler to invoke in response to a URL that your app receives.
source: https://developer.apple.com/documentation/swiftui/view/onopenurl(perform:)
timestamp: 2025-10-29T00:09:34.014Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onOpenURL(perform:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Registers a handler to invoke in response to a URL that your app receives.

```swift
nonisolated func onOpenURL(perform action: @escaping (URL) -> ()) -> some View
```

## Parameters

**action**

A closure that SwiftUI calls when your app receives a Universal Link or a custom [URL](/documentation/Foundation/URL). The closure takes the URL as an input parameter.



## Return Value

A view that handles incoming URLs.

## Discussion

Use this view modifier to receive URLs in a particular scene within your app. The scene that SwiftUI routes the incoming URL to depends on the structure of your app, what scenes are active, and other configuration. For more information, see [handlesExternalEvents(matching:)](/documentation/swiftui/scene/handlesexternalevents(matching:)).

UI frameworks traditionally pass Universal Links to your app using an [NSUser Activity](/documentation/Foundation/NSUserActivity). However, SwiftUI passes a Universal Link to your app directly as a URL, which you receive using this modifier. To receive other user activities, like when your app participates in Handoff, use the [onContinueUserActivity(_:perform:)](/documentation/swiftui/view/oncontinueuseractivity(_:perform:)) modifier instead.

For more information about linking into your app, see [allowing-apps-and-websites-to-link-to-your](/documentation/Xcode/allowing-apps-and-websites-to-link-to-your-content).

## Sending and receiving URLs

- [openURL](/documentation/swiftui/environmentvalues/openurl)
- [OpenURLAction](/documentation/swiftui/openurlaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
