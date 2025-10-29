---
title: openURL
description: An action that opens a URL.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/openurl
timestamp: 2025-10-29T00:10:10.325Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# openURL

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> An action that opens a URL.

```swift
@MainActor @preconcurrency var openURL: OpenURLAction { get set }
```

## Discussion

Read this environment value to get an [Open URLAction](/documentation/swiftui/openurlaction) instance for a given [Environment](/documentation/swiftui/environment). Call the instance to open a URL. You call the instance directly because it defines a [callAsFunction(_:)](/documentation/swiftui/openurlaction/callasfunction(_:)) method that Swift calls when you call the instance.

For example, you can open a web site when the user taps a button:

```swift
struct OpenURLExample: View {
    @Environment(\.openURL) private var openURL

    var body: some View {
        Button {
            if let url = URL(string: "https://www.example.com") {
                openURL(url)
            }
        } label: {
            Label("Get Help", systemImage: "person.fill.questionmark")
        }
    }
}
```

If you want to know whether the action succeeds, add a completion handler that takes a Boolean value. In this case, Swift implicitly calls the [callAsFunction(_:completion:)](/documentation/swiftui/openurlaction/callasfunction(_:completion:)) method instead. That method calls your completion handler after it determines whether it can open the URL, but possibly before it finishes opening the URL. You can add a handler to the example above so that it prints the outcome to the console:

```swift
openURL(url) { accepted in
    print(accepted ? "Success" : "Failure")
}
```

The system provides a default open URL action with behavior that depends on the contents of the URL. For example, the default action opens a Universal Link in the associated app if possible, or in the user’s default web browser if not.

You can also set a custom action using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier. Any views that read the action from the environment, including the built-in [Link](/documentation/swiftui/link) view and [Text](/documentation/swiftui/text) views with markdown links, or links in attributed strings, use your action. Initialize an action by calling the [init(handler:)](/documentation/swiftui/openurlaction/init(handler:)) initializer with a handler that takes a URL and returns an [Result](/documentation/swiftui/openurlaction/result):

```swift
Text("Visit [Example Company](https://www.example.com) for details.")
    .environment(\.openURL, OpenURLAction { url in
        handleURL(url) // Define this method to take appropriate action.
        return .handled
    })
```

SwiftUI translates the value that your custom action’s handler returns into an appropriate Boolean result for the action call. For example, a view that uses the action declared above receives `true` when calling the action, because the handler always returns [handled](/documentation/swiftui/openurlaction/result/handled).

## Sending and receiving URLs

- [OpenURLAction](/documentation/swiftui/openurlaction)
- [onOpenURL(perform:)](/documentation/swiftui/view/onopenurl(perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
