---
title: WKNotificationScene
description: A scene which appears in response to receiving the specified category of remote or local notifications.
source: https://developer.apple.com/documentation/swiftui/wknotificationscene
timestamp: 2025-10-29T00:13:46.428Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WKNotificationScene

**Available on:** watchOS 7.0+

> A scene which appears in response to receiving the specified category of remote or local notifications.

```swift
struct WKNotificationScene<Content, Controller> where Content : View, Controller : WKUserNotificationHostingController<Content>
```

## Conforms To

- [Scene](/documentation/swiftui/scene)

## Creating a notification scene

- [init(controller:category:)](/documentation/swiftui/wknotificationscene/init(controller:category:)) Creates a scene that appears in response to receiving a specific category of remote or local notifications.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
