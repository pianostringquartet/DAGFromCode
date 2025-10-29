---
title: task(priority:_:)
description: Adds an asynchronous task to perform before this view appears.
source: https://developer.apple.com/documentation/swiftui/view/task(priority:_:)
timestamp: 2025-10-29T00:11:26.992Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# task(priority:_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds an asynchronous task to perform before this view appears.

```swift
nonisolated func task(priority: TaskPriority = .userInitiated, _ action: @escaping () async -> Void) -> some View
```

## Parameters

**priority**

The task priority to use when creating the asynchronous task. The default priority is [user Initiated](/documentation/Swift/TaskPriority/userInitiated).



**action**

A closure that SwiftUI calls as an asynchronous task before the view appears. SwiftUI will automatically cancel the task at some point after the view disappears before the action completes.



## Return Value

A view that runs the specified action asynchronously before the view appears.

## Discussion

Use this modifier to perform an asynchronous task with a lifetime that matches that of the modified view. If the task doesn’t finish before SwiftUI removes the view or the view changes identity, SwiftUI cancels the task.

Use the `await` keyword inside the task to wait for an asynchronous call to complete, or to wait on the values of an [Async Sequence](/documentation/Swift/AsyncSequence) instance. For example, you can modify a [Text](/documentation/swiftui/text) view to start a task that loads content from a remote resource:

```swift
let url = URL(string: "https://example.com")!
@State private var message = "Loading..."

var body: some View {
    Text(message)
        .task {
            do {
                var receivedLines = [String]()
                for try await line in url.lines {
                    receivedLines.append(line)
                    message = "Received \(receivedLines.count) lines"
                }
            } catch {
                message = "Failed to load"
            }
        }
}
```

This example uses the [lines](/documentation/Foundation/URL/lines) method to get the content stored at the specified [URL](/documentation/Foundation/URL) as an asynchronous sequence of strings. When each new line arrives, the body of the `for`-`await`-`in` loop stores the line in an array of strings and updates the content of the text view to report the latest line count.

## Responding to view life cycle updates

- [onAppear(perform:)](/documentation/swiftui/view/onappear(perform:))
- [onDisappear(perform:)](/documentation/swiftui/view/ondisappear(perform:))
- [task(id:priority:_:)](/documentation/swiftui/view/task(id:priority:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
