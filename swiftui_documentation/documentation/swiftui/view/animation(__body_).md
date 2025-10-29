---
title: animation(_:body:)
description: Applies the given animation to all animatable values within the  closure.
source: https://developer.apple.com/documentation/swiftui/view/animation(_:body:)
timestamp: 2025-10-29T00:15:21.948Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# animation(_:body:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Applies the given animation to all animatable values within the  closure.

```swift
nonisolated func animation<V>(_ animation: Animation?, @ViewBuilder body: (PlaceholderContentView<Self>) -> V) -> some View where V : View
```

## Discussion

Any modifiers applied to the content of `body` will be applied to this view, and the `animation` will only be used on the modifiers defined in the `body`.

The following code animates the opacity changing with an easeInOut animation, while the contents of MyView are animated with the implicit transaction’s animation:

```swift
MyView(isActive: isActive)
    .animation(.easeInOut) { content in
        content.opacity(isActive ? 1.0 : 0.0)
    }
```

## Adding state-based animation to a view

- [animation(_:)](/documentation/swiftui/view/animation(_:))
- [animation(_:value:)](/documentation/swiftui/view/animation(_:value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
