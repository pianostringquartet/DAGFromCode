---
title: rootView
description: The root view of the SwiftUI view hierarchy managed by this view controller.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/rootview
timestamp: 2025-10-29T00:12:16.392Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Instance Property**

# rootView

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> The root view of the SwiftUI view hierarchy managed by this view controller.

```swift
@MainActor @preconcurrency var rootView: Content { get set }
```

## Responding to view-related events

- [loadView()](/documentation/swiftui/uihostingcontroller/loadview())
- [viewWillAppear(_:)](/documentation/swiftui/uihostingcontroller/viewwillappear(_:))
- [viewDidAppear(_:)](/documentation/swiftui/uihostingcontroller/viewdidappear(_:))
- [viewWillDisappear(_:)](/documentation/swiftui/uihostingcontroller/viewwilldisappear(_:))
- [viewDidDisappear(_:)](/documentation/swiftui/uihostingcontroller/viewdiddisappear(_:))
- [willMove(toParent:)](/documentation/swiftui/uihostingcontroller/willmove(toparent:))
- [didMove(toParent:)](/documentation/swiftui/uihostingcontroller/didmove(toparent:))
- [viewWillTransition(to:with:)](/documentation/swiftui/uihostingcontroller/viewwilltransition(to:with:))
- [viewWillLayoutSubviews()](/documentation/swiftui/uihostingcontroller/viewwilllayoutsubviews())
- [target(forAction:withSender:)](/documentation/swiftui/uihostingcontroller/target(foraction:withsender:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
