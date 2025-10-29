---
title: focusable(_:interactions:)
description: Specifies if the view is focusable, and if so, what focus-driven interactions it supports.
source: https://developer.apple.com/documentation/swiftui/view/focusable(_:interactions:)
timestamp: 2025-10-29T00:12:51.142Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusable(_:interactions:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Specifies if the view is focusable, and if so, what focus-driven interactions it supports.

```swift
nonisolated func focusable(_ isFocusable: Bool = true, interactions: FocusInteractions) -> some View
```

## Parameters

**isFocusable**

`true` if the view should participate in focus; `false` otherwise. The default value is `true`.



**interactions**

The types of focus interactions supported by the view. The default value is `.automatic`.



## Return Value

A view that sets whether its child is focusable.

## Discussion

By default, SwiftUI enables all possible focus interactions. However, on macOS and iOS it is conventional for button-like views to only accept focus when the user has enabled keyboard navigation system-wide in the Settings app. Clients can reproduce this behavior with custom views by only supporting `.activate` interactions.

```swift
MyTapGestureView(...)
    .focusable(interactions: .activate)
```

> [!NOTE]
> The focus interactions allowed for custom views changed in macOS 14—previously, custom views could only become focused with keyboard navigation enabled system-wide. Clients built using older SDKs will continue to see the older focus behavior, while custom views in clients built using macOS 14 or later will always be focusable unless the client requests otherwise by specifying a restricted set of focus interactions.

## Indicating that a view can receive focus

- [focusable(_:)](/documentation/swiftui/view/focusable(_:))
- [FocusInteractions](/documentation/swiftui/focusinteractions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
