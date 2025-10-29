---
title: UIHostingSceneDelegate
description: Extends  to bridge SwiftUI scenes.
source: https://developer.apple.com/documentation/swiftui/uihostingscenedelegate
timestamp: 2025-10-29T00:13:58.828Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# UIHostingSceneDelegate

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, tvOS 26.0+, visionOS 26.0+

> Extends  to bridge SwiftUI scenes.

```swift
protocol UIHostingSceneDelegate : UISceneDelegate
```

## Overview

Declare any SwiftUI scenes you wish to activate from UIKit in the static `rootScene` property of your conforming class:

```swift
class HostingSceneDelegate: UIHostingSceneDelegate {
    static var rootScene: some Scene {
        WindowGroup(id: "swiftui-window") {
            ContentView()
        }
    }

    // Add UISceneDelegate lifecycle callbacks here
}
```

Use a class conforming to [UIHosting Scene Delegate](/documentation/swiftui/uihostingscenedelegate) to  activate a scene by its ID or presented value with `UISceneSessionActivationRequest`:

```swift
if let requestWithID = UISceneSessionActivationRequest(
    hostingDelegateClass: HostingSceneDelegate.self,
    id: "swiftui-window"
) {
    UIApplication.shared.activateSceneSession(for: requestWithID)
}

if let requestWithData = UISceneSessionActivationRequest(
    hostingDelegateClass: HostingSceneDelegate.self,
    value: FavoriteNumber(13)
) {
    UIApplication.shared.activateSceneSession(for: requestWithData)
}
```

When a SwiftUI scene declared in your `rootScene` property is activated, an instance of your conforming class will be created by SwiftUI and receive window scene lifecycle callbacks.

Your `UIHostingSceneDelegate` class can be used with a `UISceneConfiguration` in your app delegate’s `application(_:configurationForConnecting:options:)`method to activate a SwiftUI scene in response to an external event:

```swift
class AppDelegate: UIApplicationDelegate {

    func application(
        _ app: UIApplication,
        configurationForConnecting sceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let config = UISceneConfiguration(
            name: nil, sessionRole: sceneSession.role)
        config.delegateClass = HostingSceneDelegate.self
        return config
    }

}
```

## Inherits From

- [NSObjectProtocol](/documentation/ObjectiveC/NSObjectProtocol)
- [UISceneDelegate](/documentation/UIKit/UISceneDelegate)

## Associated Types

- [RootScene](/documentation/swiftui/uihostingscenedelegate/rootscene-swift.associatedtype)

## Type Properties

- [rootScene](/documentation/swiftui/uihostingscenedelegate/rootscene-swift.type.property)

## Displaying SwiftUI views in UIKit

- [Using SwiftUI with UIKit](/documentation/UIKit/using-swiftui-with-uikit)
- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [UIHostingController](/documentation/swiftui/uihostingcontroller)
- [UIHostingControllerSizingOptions](/documentation/swiftui/uihostingcontrollersizingoptions)
- [UIHostingConfiguration](/documentation/swiftui/uihostingconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
