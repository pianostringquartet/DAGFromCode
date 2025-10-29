---
title: callAsFunction(_:)
description: Opens a URL, following system conventions.
source: https://developer.apple.com/documentation/swiftui/openurlaction/callasfunction(_:)
timestamp: 2025-10-29T00:09:43.476Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openurlaction](/documentation/swiftui/openurlaction)

**Instance Method**

# callAsFunction(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Opens a URL, following system conventions.

```swift
@MainActor @preconcurrency func callAsFunction(_ url: URL)
```

## Parameters

**url**

The URL to open.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [Open URLAction](/documentation/swiftui/openurlaction) structure that you get from the [Environment](/documentation/swiftui/environment), using a URL as an argument:

```swift
struct OpenURLExample: View {
    @Environment(\.openURL) private var openURL

    var body: some View {
        Button {
            if let url = URL(string: "https://www.example.com") {
                openURL(url) // Implicitly calls openURL.callAsFunction(url)
            }
        } label: {
            Label("Get Help", systemImage: "person.fill.questionmark")
        }
    }
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(_:completion:)](/documentation/swiftui/openurlaction/callasfunction(_:completion:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
