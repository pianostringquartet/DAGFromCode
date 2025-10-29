---
title: allowsWindowActivationEvents(_:)
description: Configures whether gestures in this view hierarchy can handle events that activate the containing window.
source: https://developer.apple.com/documentation/swiftui/view/allowswindowactivationevents(_:)
timestamp: 2025-10-29T00:09:58.528Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# allowsWindowActivationEvents(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Configures whether gestures in this view hierarchy can handle events that activate the containing window.

```swift
nonisolated func allowsWindowActivationEvents(_ value: Bool?) -> some View
```

## Parameters

**value**

A Boolean value that indicates whether gestures in this view hierarchy can handle events that activate the containing window. If `nil`, or if the modifier is not present, the behavior will be inherited from the view’s ancestors.



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

> [!NOTE]
> Prefer using [allowsWindowActivationEvents()](/documentation/swiftui/view/allowswindowactivationevents()) if the parameter is always `true` and it never changes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
