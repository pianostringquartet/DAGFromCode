---
title: callAsFunction()
description: Dismisses the view if it is currently presented.
source: https://developer.apple.com/documentation/swiftui/dismissaction/callasfunction()
timestamp: 2025-10-29T00:13:55.305Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dismissaction](/documentation/swiftui/dismissaction)

**Instance Method**

# callAsFunction()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Dismisses the view if it is currently presented.

```swift
@MainActor @preconcurrency func callAsFunction()
```

## Discussion

Don’t call this method directly. SwiftUI calls it for you when you call the [Dismiss Action](/documentation/swiftui/dismissaction) structure that you get from the [Environment](/documentation/swiftui/environment):

```swift
private struct SheetContents: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Button("Done") {
            dismiss() // Implicitly calls dismiss.callAsFunction()
        }
    }
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
