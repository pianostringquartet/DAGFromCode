---
title: sidebar
description: The search field appears in the sidebar of a navigation view.
source: https://developer.apple.com/documentation/swiftui/searchfieldplacement/sidebar
timestamp: 2025-10-29T00:10:37.262Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [searchfieldplacement](/documentation/swiftui/searchfieldplacement)

**Type Property**

# sidebar

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> The search field appears in the sidebar of a navigation view.

```swift
static var sidebar: SearchFieldPlacement { get }
```

## Discussion

The precise placement depends on the platform:

- In iOS and iPadOS the search field appears in the section of the navigation bar associated with the sidebar.
- In macOS the search field appears as a sticky header in the sidebar, attached to the toolbar.

If a sidebar isn’t available, like when you apply the searchable modifier to a view other than a navigation split view, SwiftUI uses automatic placement instead.

> [!NOTE]
> The search field appears inline with the sidebar’s content when building with Xcode 16 SDKs or earlier.

## Getting a search field placement

- [automatic](/documentation/swiftui/searchfieldplacement/automatic)
- [navigationBarDrawer](/documentation/swiftui/searchfieldplacement/navigationbardrawer)
- [navigationBarDrawer(displayMode:)](/documentation/swiftui/searchfieldplacement/navigationbardrawer(displaymode:))
- [toolbar](/documentation/swiftui/searchfieldplacement/toolbar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
