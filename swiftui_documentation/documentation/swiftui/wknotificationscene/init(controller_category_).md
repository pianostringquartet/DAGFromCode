---
title: init(controller:category:)
description: Creates a scene that appears in response to receiving a specific category of remote or local notifications.
source: https://developer.apple.com/documentation/swiftui/wknotificationscene/init(controller:category:)
timestamp: 2025-10-29T00:11:02.099Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wknotificationscene](/documentation/swiftui/wknotificationscene)

**Initializer**

# init(controller:category:)

**Available on:** watchOS 7.0+

> Creates a scene that appears in response to receiving a specific category of remote or local notifications.

```swift
init(controller: Controller.Type = Controller.self, category: String)
```

## Parameters

**controller**

The type of [WKUser Notification Hosting Controller](/documentation/swiftui/wkusernotificationhostingcontroller) to display upon receipt of the specified notification category.



**category**

The category of notifications to listen for.



## Discussion

Use a watch notification instance to add support for one or more Apple Watch notification scenes that appear on receipt of the local or remote notification categories you specify. The example below, adds two notification scenes to the app declaration:

```swift
@main
struct PopQuizApp : App {
    var body: some Scene {
        MainScene {
            RootView()
        }

        WKNotificationScene(
            controller: QuizTimeController.self,
            category: "com.example.quiztime"
        )

        WKNotificationScene(
            controller: QuizResultsController.self,
            category: "com.example.results"
        )
    }
}
```

Each [WKNotification Scene](/documentation/swiftui/wknotificationscene) declaration references a [WKUser Notification Hosting Controller](/documentation/swiftui/wkusernotificationhostingcontroller) and a category string that you provide. The hosting controller displays your notification’s content view upon receipt of a local or a [Push Kit](/documentation/PushKit) notification. The category string you specify corresponds to the category name in the notification’s dictionary and describes a specific notification that contains the content displayed by the notification view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
