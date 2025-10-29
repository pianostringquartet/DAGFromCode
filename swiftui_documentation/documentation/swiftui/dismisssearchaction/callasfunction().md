---
title: callAsFunction()
description: Dismisses the current search operation, if any.
source: https://developer.apple.com/documentation/swiftui/dismisssearchaction/callasfunction()
timestamp: 2025-10-29T00:13:08.805Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dismisssearchaction](/documentation/swiftui/dismisssearchaction)

**Instance Method**

# callAsFunction()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Dismisses the current search operation, if any.

```swift
@MainActor @preconcurrency func callAsFunction()
```

## Discussion

Don’t call this method directly. SwiftUI calls it for you when you call the [Dismiss Search Action](/documentation/swiftui/dismisssearchaction) structure that you get from the [Environment](/documentation/swiftui/environment):

```swift
struct SearchedView: View {
    @Environment(\.dismissSearch) private var dismissSearch

    var body: some View {
        Button("Cancel") {
            dismissSearch() // Implicitly calls dismissSearch.callAsFunction()
        }
    }
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
