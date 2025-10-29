---
title: callAsFunction(_:completion:)
description: Asynchronously opens a URL, following system conventions.
source: https://developer.apple.com/documentation/swiftui/openurlaction/callasfunction(_:completion:)
timestamp: 2025-10-29T00:09:40.168Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openurlaction](/documentation/swiftui/openurlaction)

**Instance Method**

# callAsFunction(_:completion:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+

> Asynchronously opens a URL, following system conventions.

```swift
@MainActor @preconcurrency func callAsFunction(_ url: URL, completion: @escaping (Bool) -> Void)
```

## Parameters

**url**

The URL to open.



**completion**

A closure the method calls after determining if it can open the URL, but possibly before fully opening the URL. The closure takes a Boolean value that indicates whether the method can open the URL.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [Open URLAction](/documentation/swiftui/openurlaction) structure that you get from the [Environment](/documentation/swiftui/environment), using a URL and a completion handler as arguments:

```swift
struct OpenURLExample: View {
    @Environment(\.openURL) private var openURL

    var body: some View {
        Button {
            if let url = URL(string: "https://www.example.com") {
                // Implicitly calls openURL.callAsFunction(url) { ... }
                openURL(url) { accepted in
                    print(accepted ? "Success" : "Failure")
                }
            }
        } label: {
            Label("Get Help", systemImage: "person.fill.questionmark")
        }
    }
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(_:)](/documentation/swiftui/openurlaction/callasfunction(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
