---
title: body(content:)
description: Gets the current body of the caller.
source: https://developer.apple.com/documentation/swiftui/viewmodifier/body(content:)
timestamp: 2025-10-29T00:12:10.785Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewmodifier](/documentation/swiftui/viewmodifier)

**Instance Method**

# body(content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Gets the current body of the caller.

```swift
@ViewBuilder @MainActor @preconcurrency func body(content: Self.Content) -> Self.Body
```

## Discussion

`content` is a proxy for the view that will have the modifier represented by `Self` applied to it.

## Creating a view modifier

- [Body](/documentation/swiftui/viewmodifier/body)
- [ViewModifier.Content](/documentation/swiftui/viewmodifier/content)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
