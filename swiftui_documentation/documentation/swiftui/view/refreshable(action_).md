---
title: refreshable(action:)
description: Marks this view as refreshable.
source: https://developer.apple.com/documentation/swiftui/view/refreshable(action:)
timestamp: 2025-10-29T00:10:20.369Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# refreshable(action:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Marks this view as refreshable.

```swift
nonisolated func refreshable(action: @escaping () async -> Void) -> some View
```

## Parameters

**action**

An asynchronous handler that SwiftUI executes when the user requests a refresh. Use this handler to initiate an update of model data displayed in the modified view. Use `await` in front of any asynchronous calls inside the handler.



## Return Value

A view with a new refresh action in its environment.

## Discussion

Apply this modifier to a view to set the [refresh](/documentation/swiftui/environmentvalues/refresh) value in the view’s environment to a [Refresh Action](/documentation/swiftui/refreshaction) instance that uses the specified `action` as its handler. Views that detect the presence of the instance can change their appearance to provide a way for the user to execute the handler.

For example, when you apply this modifier on iOS and iPadOS to a [List](/documentation/swiftui/list), the list enables a standard pull-to-refresh gesture that refreshes the list contents. When the user drags the top of the scrollable area downward, the view reveals a progress indicator and executes the specified handler. The indicator remains visible for the duration of the refresh, which runs asynchronously:

```swift
List(mailbox.conversations) { conversation in
    ConversationCell(conversation)
}
.refreshable {
    await mailbox.fetch()
}
```

You can add refresh capability to your own views as well. For information on how to do that, see [Refresh Action](/documentation/swiftui/refreshaction).

## Refreshing a list’s content

- [refresh](/documentation/swiftui/environmentvalues/refresh)
- [RefreshAction](/documentation/swiftui/refreshaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
