---
title: navigationSplitViewStyle(_:)
description: Sets the style for navigation split views within this view.
source: https://developer.apple.com/documentation/swiftui/view/navigationsplitviewstyle(_:)
timestamp: 2025-10-29T00:10:33.444Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationSplitViewStyle(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the style for navigation split views within this view.

```swift
nonisolated func navigationSplitViewStyle<S>(_ style: S) -> some View where S : NavigationSplitViewStyle
```

## Parameters

**style**

The style to set.



## Return Value

A view that uses the specified navigation split view style.

## Presenting views in columns

- [Bringing robust navigation structure to your SwiftUI app](/documentation/swiftui/bringing-robust-navigation-structure-to-your-swiftui-app)
- [Migrating to new navigation types](/documentation/swiftui/migrating-to-new-navigation-types)
- [NavigationSplitView](/documentation/swiftui/navigationsplitview)
- [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:))
- [navigationSplitViewColumnWidth(min:ideal:max:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(min:ideal:max:))
- [NavigationSplitViewVisibility](/documentation/swiftui/navigationsplitviewvisibility)
- [NavigationLink](/documentation/swiftui/navigationlink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
