---
title: navigationBarBackButtonHidden(_:)
description: Hides the navigation bar back button for the view.
source: https://developer.apple.com/documentation/swiftui/view/navigationbarbackbuttonhidden(_:)
timestamp: 2025-10-29T00:10:52.875Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationBarBackButtonHidden(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 13.0+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Hides the navigation bar back button for the view.

```swift
nonisolated func navigationBarBackButtonHidden(_ hidesBackButton: Bool = true) -> some View
```

## Parameters

**hidesBackButton**

A Boolean value that indicates whether to hide the back button. The default value is `true`.



## Discussion

Use `navigationBarBackButtonHidden(_:)` to hide the back button for this view.

This modifier only takes effect when this view is inside of and visible within a [Navigation View](/documentation/swiftui/navigationview).

## Configuring the navigation bar

- [navigationBarTitleDisplayMode(_:)](/documentation/swiftui/view/navigationbartitledisplaymode(_:))
- [NavigationBarItem](/documentation/swiftui/navigationbaritem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
