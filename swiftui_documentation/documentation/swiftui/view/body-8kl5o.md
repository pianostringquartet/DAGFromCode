---
title: body
description: The content and behavior of the view.
source: https://developer.apple.com/documentation/swiftui/view/body-8kl5o
timestamp: 2025-10-29T00:11:19.173Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Property**

# body

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The content and behavior of the view.

```swift
@ViewBuilder @MainActor @preconcurrency var body: Self.Body { get }
```

## Discussion

When you implement a custom view, you must implement a computed `body` property to provide the content for your view. Return a view that’s composed of built-in views that SwiftUI provides, plus other composite views that you’ve already defined:

```swift
struct MyView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
```

For more information about composing views and a view hierarchy, see [Declaring-a-Custom](/documentation/swiftui/declaring-a-custom-view).

## Implementing a custom view

- [Body](/documentation/swiftui/view/body-swift.associatedtype)
- [modifier(_:)](/documentation/swiftui/view/modifier(_:))
- [Previews in Xcode](/documentation/swiftui/previews-in-xcode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
