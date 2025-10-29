---
title: viewWillAppear(_:)
description: Notifies the view controller that its view is about to be added to a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/viewwillappear(_:)
timestamp: 2025-10-29T00:09:57.162Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Instance Method**

# viewWillAppear(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Notifies the view controller that its view is about to be added to a view hierarchy.

```swift
@MainActor @preconcurrency override dynamic func viewWillAppear(_ animated: Bool)
```

## Parameters

**animated**

If `true`, the view is being added using an animation.



## Discussion

SwiftUI calls this method before adding the hosting controller’s root view to the view hierarchy. You can override this method to perform custom tasks associated with the appearance of the view. If you override this method, you must call `super` at some point in your implementation.

## Responding to view-related events

- [loadView()](/documentation/swiftui/uihostingcontroller/loadview())
- [viewDidAppear(_:)](/documentation/swiftui/uihostingcontroller/viewdidappear(_:))
- [viewWillDisappear(_:)](/documentation/swiftui/uihostingcontroller/viewwilldisappear(_:))
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
