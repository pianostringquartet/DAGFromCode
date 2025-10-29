---
title: callAsFunction()
description: Initiates a refresh action.
source: https://developer.apple.com/documentation/swiftui/refreshaction/callasfunction()
timestamp: 2025-10-29T00:11:01.173Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [refreshaction](/documentation/swiftui/refreshaction)

**Instance Method**

# callAsFunction()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Initiates a refresh action.

```swift
func callAsFunction() async
```

## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [Refresh Action](/documentation/swiftui/refreshaction) structure that you get from the [Environment](/documentation/swiftui/environment):

```swift
struct RefreshableView: View {
    @Environment(\.refresh) private var refresh

    var body: some View {
        Button("Refresh") {
            Task {
                await refresh?()  // Implicitly calls refresh.callAsFunction()
            }
        }
        .disabled(refresh == nil)
    }
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*. For information about asynchronous operations in Swift, see [Concurrency.html](https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
