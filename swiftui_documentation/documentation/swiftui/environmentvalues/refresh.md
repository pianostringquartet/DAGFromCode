---
title: refresh
description: A refresh action stored in a view’s environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/refresh
timestamp: 2025-10-29T00:09:33.287Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# refresh

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A refresh action stored in a view’s environment.

```swift
var refresh: RefreshAction? { get }
```

## Discussion

When this environment value contains an instance of the [Refresh Action](/documentation/swiftui/refreshaction) structure, certain built-in views in the corresponding [Environment](/documentation/swiftui/environment) begin offering a refresh capability. They apply the instance’s handler to any refresh operation that the user initiates. By default, the environment value is `nil`, but you can use the [refreshable(action:)](/documentation/swiftui/view/refreshable(action:)) modifier to create and store a new refresh action that uses the handler that you specify:

```swift
List(mailbox.conversations) { conversation in
    ConversationCell(conversation)
}
.refreshable {
    await mailbox.fetch()
}
```

On iOS and iPadOS, the [List](/documentation/swiftui/list) in the example above offers a pull to refresh gesture because it detects the refresh action. When the user drags the list down and releases, the list calls the action’s handler. Because SwiftUI declares the handler as asynchronous, it can safely make long-running asynchronous calls, like fetching network data.

### Refreshing custom views

You can also offer refresh capability in your custom views. Read the `refresh` environment value to get the [Refresh Action](/documentation/swiftui/refreshaction) instance for a given [Environment](/documentation/swiftui/environment). If you find a non-`nil` value, change your view’s appearance or behavior to offer the refresh to the user, and call the instance to conduct the refresh. You can call the refresh instance directly because it defines a [callAsFunction()](/documentation/swiftui/refreshaction/callasfunction()) method that Swift calls when you call the instance:

```swift
struct RefreshableView: View {
    @Environment(\.refresh) private var refresh

    var body: some View {
        Button("Refresh") {
            Task {
                await refresh?()
            }
        }
        .disabled(refresh == nil)
    }
}
```

Be sure to call the handler asynchronously by preceding it with `await`. Because the call is asynchronous, you can use its lifetime to indicate progress to the user. For example, you can reveal an indeterminate [Progress View](/documentation/swiftui/progressview) before calling the handler, and hide it when the handler completes.

If your code isn’t already in an asynchronous context, create a [Task](/documentation/Swift/Task) for the method to run in. If you do this, consider adding a way for the user to cancel the task. For more information, see [Concurrency.html](https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html) in *The Swift Programming Language*.

## Refreshing a list’s content

- [refreshable(action:)](/documentation/swiftui/view/refreshable(action:))
- [RefreshAction](/documentation/swiftui/refreshaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
