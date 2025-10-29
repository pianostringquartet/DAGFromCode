---
title: NavigationSplitViewVisibility
description: The visibility of the leading columns in a navigation split view.
source: https://developer.apple.com/documentation/swiftui/navigationsplitviewvisibility
timestamp: 2025-10-29T00:10:16.823Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NavigationSplitViewVisibility

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The visibility of the leading columns in a navigation split view.

```swift
struct NavigationSplitViewVisibility
```

## Overview

Use a value of this type to control the visibility of the columns of a [Navigation Split View](/documentation/swiftui/navigationsplitview). Create a [State](/documentation/swiftui/state) property with a value of this type, and pass a [Binding](/documentation/swiftui/binding) to that state to the [init(columnVisibility:sidebar:detail:)](/documentation/swiftui/navigationsplitview/init(columnvisibility:sidebar:detail:)) or [init(columnVisibility:sidebar:content:detail:)](/documentation/swiftui/navigationsplitview/init(columnvisibility:sidebar:content:detail:)) initializer when you create the navigation split view. You can then modify the value elsewhere in your code to:

- Hide all but the trailing column with [detail Only](/documentation/swiftui/navigationsplitviewvisibility/detailonly).
- Hide the leading column of a three-column navigation split view with [double Column](/documentation/swiftui/navigationsplitviewvisibility/doublecolumn).
- Show all the columns with [all](/documentation/swiftui/navigationsplitviewvisibility/all).
- Rely on the automatic behavior for the current context with [automatic](/documentation/swiftui/navigationsplitviewvisibility/automatic).

> [!NOTE]
> Some platforms don’t respect every option. For example, macOS always displays the content column.

## Conforms To

- [Decodable](/documentation/Swift/Decodable)
- [Encodable](/documentation/Swift/Encodable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting visibilities

- [automatic](/documentation/swiftui/navigationsplitviewvisibility/automatic) Use the default leading column visibility for the current device.
- [all](/documentation/swiftui/navigationsplitviewvisibility/all) Show all the columns of a three-column navigation split view.
- [doubleColumn](/documentation/swiftui/navigationsplitviewvisibility/doublecolumn) Show the content column and detail area of a three-column navigation split view, or the sidebar column and detail area of a two-column navigation split view.
- [detailOnly](/documentation/swiftui/navigationsplitviewvisibility/detailonly) Hide the leading two columns of a three-column navigation split view, so that just the detail area shows.

## Presenting views in columns

- [Bringing robust navigation structure to your SwiftUI app](/documentation/swiftui/bringing-robust-navigation-structure-to-your-swiftui-app)
- [Migrating to new navigation types](/documentation/swiftui/migrating-to-new-navigation-types)
- [NavigationSplitView](/documentation/swiftui/navigationsplitview)
- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:))
- [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:))
- [navigationSplitViewColumnWidth(min:ideal:max:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(min:ideal:max:))
- [NavigationLink](/documentation/swiftui/navigationlink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
