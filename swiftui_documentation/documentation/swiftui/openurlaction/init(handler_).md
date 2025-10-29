---
title: init(handler:)
description: Creates an action that opens a URL.
source: https://developer.apple.com/documentation/swiftui/openurlaction/init(handler:)
timestamp: 2025-10-29T00:09:50.420Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openurlaction](/documentation/swiftui/openurlaction)

**Initializer**

# init(handler:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates an action that opens a URL.

```swift
@MainActor @preconcurrency init(handler: @escaping (URL) -> OpenURLAction.Result)
```

## Parameters

**handler**

The closure to run for the given URL. The closure takes a URL as input, and returns a [Result](/documentation/swiftui/openurlaction/result) that indicates the outcome of the action.



## Discussion

Use this initializer to create a custom action for opening URLs. Provide a handler that takes a URL and returns an [Result](/documentation/swiftui/openurlaction/result). Place your handler in the environment using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier:

```swift
Text("Visit [Example Company](https://www.example.com) for details.")
    .environment(\.openURL, OpenURLAction { url in
        handleURL(url) // Define this method to take appropriate action.
        return .handled
    })
```

Any views that read the action from the environment, including the built-in [Link](/documentation/swiftui/link) view and [Text](/documentation/swiftui/text) views with markdown links, or links in attributed strings, use your action.

SwiftUI translates the value that your custom action’s handler returns into an appropriate Boolean result for the action call. For example, a view that uses the action declared above receives `true` when calling the action, because the handler always returns [handled](/documentation/swiftui/openurlaction/result/handled).

## Creating the action

- [OpenURLAction.Result](/documentation/swiftui/openurlaction/result)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
