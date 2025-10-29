---
title: navigationSplitViewColumnWidth(min:ideal:max:)
description: Sets a flexible, preferred width for the column containing this view.
source: https://developer.apple.com/documentation/swiftui/view/navigationsplitviewcolumnwidth(min:ideal:max:)
timestamp: 2025-10-29T00:11:00.471Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationSplitViewColumnWidth(min:ideal:max:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets a flexible, preferred width for the column containing this view.

```swift
nonisolated func navigationSplitViewColumnWidth(min: CGFloat? = nil, ideal: CGFloat, max: CGFloat? = nil) -> some View
```

## Discussion

Apply this modifier to the content of a column in a [Navigation Split View](/documentation/swiftui/navigationsplitview) to specify a preferred flexible width for the column. Use [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:)) if you need to specify a fixed width.

The following example shows a three-column navigation split view where the first column has a preferred width of 150 points, and the second column has a flexible, preferred width between 150 and 400 points:

```swift
NavigationSplitView {
    MySidebar()
        .navigationSplitViewColumnWidth(150)
} contents: {
    MyContents()
        .navigationSplitViewColumnWidth(
            min: 150, ideal: 200, max: 400)
} detail: {
    MyDetail()
}
```

Only some platforms enable resizing columns. If you specify a width that the current presentation environment doesn’t support, SwiftUI may use a different width for your column.

## Presenting views in columns

- [Bringing robust navigation structure to your SwiftUI app](/documentation/swiftui/bringing-robust-navigation-structure-to-your-swiftui-app)
- [Migrating to new navigation types](/documentation/swiftui/migrating-to-new-navigation-types)
- [NavigationSplitView](/documentation/swiftui/navigationsplitview)
- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:))
- [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:))
- [NavigationSplitViewVisibility](/documentation/swiftui/navigationsplitviewvisibility)
- [NavigationLink](/documentation/swiftui/navigationlink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
