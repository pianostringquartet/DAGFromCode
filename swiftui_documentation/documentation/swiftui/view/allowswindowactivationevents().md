---
title: allowsWindowActivationEvents()
description: Configures gestures in this view hierarchy to handle events that activate the containing window.
source: https://developer.apple.com/documentation/swiftui/view/allowswindowactivationevents()
timestamp: 2025-10-29T00:10:58.118Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# allowsWindowActivationEvents()

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Configures gestures in this view hierarchy to handle events that activate the containing window.

```swift
nonisolated func allowsWindowActivationEvents() -> some View
```

## Discussion

Views higher in the hierarchy can override the value you set on this view. In the following example, the tap gesture on the `Rectangle` won’t handle events that activate the containing window because the outer `allowsWindowActivationEvents(_:)` view modifier overrides the inner one:

```swift
HStack {
    Rectangle()
        .onTapGesture { ... }
        .allowsWindowActivationEvents()
}
.allowsWindowActivationEvents(false)
```

> [!NOTE]
> It’s only possible to disallow handling events that activate the containing window for views that allow it by default or that inherit this behavior from their ancestors. Views that explicitly already disallow this functionality can’t have it turned on.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
