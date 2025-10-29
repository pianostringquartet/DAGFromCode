---
title: body(content:phase:)
description: Gets the current body of the caller.
source: https://developer.apple.com/documentation/swiftui/transition/body(content:phase:)
timestamp: 2025-10-29T00:14:00.859Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transition](/documentation/swiftui/transition)

**Instance Method**

# body(content:phase:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Gets the current body of the caller.

```swift
@ViewBuilder @MainActor @preconcurrency func body(content: Self.Content, phase: TransitionPhase) -> Self.Body
```

## Discussion

`content` is a proxy for the view that will have the modifier represented by `Self` applied to it.

## Creating a custom transition

- [Body](/documentation/swiftui/transition/body)
- [Transition.Content](/documentation/swiftui/transition/content)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
