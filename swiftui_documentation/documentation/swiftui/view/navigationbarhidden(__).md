---
title: navigationBarHidden(_:)
description: Hides the navigation bar for this view.
source: https://developer.apple.com/documentation/swiftui/view/navigationbarhidden(_:)
timestamp: 2025-10-29T00:11:29.051Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationBarHidden(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Hides the navigation bar for this view.

```swift
nonisolated func navigationBarHidden(_ hidden: Bool) -> some View
```

## Parameters

**hidden**

A Boolean value that indicates whether to hide the navigation bar.



## Discussion

Use this method to hide the navigation bar. This modifier only takes effect when the modified view is inside of and visible within a [Navigation View](/documentation/swiftui/navigationview).

## Auxiliary view modifiers

- [navigationBarTitle(_:)](/documentation/swiftui/view/navigationbartitle(_:))
- [navigationBarTitle(_:displayMode:)](/documentation/swiftui/view/navigationbartitle(_:displaymode:))
- [navigationBarItems(leading:)](/documentation/swiftui/view/navigationbaritems(leading:))
- [navigationBarItems(leading:trailing:)](/documentation/swiftui/view/navigationbaritems(leading:trailing:))
- [navigationBarItems(trailing:)](/documentation/swiftui/view/navigationbaritems(trailing:))
- [statusBar(hidden:)](/documentation/swiftui/view/statusbar(hidden:))
- [contextMenu(_:)](/documentation/swiftui/view/contextmenu(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
