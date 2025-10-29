---
title: viewWillDisappear(_:)
description: Notifies the view controller that its view will be removed from a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/viewwilldisappear(_:)
timestamp: 2025-10-29T00:12:33.063Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Instance Method**

# viewWillDisappear(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Notifies the view controller that its view will be removed from a view hierarchy.

```swift
@MainActor @preconcurrency override dynamic func viewWillDisappear(_ animated: Bool)
```

## Parameters

**animated**

If `true`, the view is being removed using an animation.



## Discussion

SwiftUI calls this method before removing the hosting controller’s root view from the view hierarchy. You can override this method to perform custom tasks associated with the disappearance of the view. If you override this method, you must call `super` at some point in your implementation.

## Responding to view-related events

- [loadView()](/documentation/swiftui/uihostingcontroller/loadview())
- [viewWillAppear(_:)](/documentation/swiftui/uihostingcontroller/viewwillappear(_:))
- [viewDidAppear(_:)](/documentation/swiftui/uihostingcontroller/viewdidappear(_:))
- [viewDidDisappear(_:)](/documentation/swiftui/uihostingcontroller/viewdiddisappear(_:))
- [willMove(toParent:)](/documentation/swiftui/uihostingcontroller/willmove(toparent:))
- [didMove(toParent:)](/documentation/swiftui/uihostingcontroller/didmove(toparent:))
- [viewWillTransition(to:with:)](/documentation/swiftui/uihostingcontroller/viewwilltransition(to:with:))
- [viewWillLayoutSubviews()](/documentation/swiftui/uihostingcontroller/viewwilllayoutsubviews())
- [target(forAction:withSender:)](/documentation/swiftui/uihostingcontroller/target(foraction:withsender:))
- [rootView](/documentation/swiftui/uihostingcontroller/rootview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
