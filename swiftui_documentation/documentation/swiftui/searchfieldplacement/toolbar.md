---
title: toolbar
description: The search field appears in the toolbar.
source: https://developer.apple.com/documentation/swiftui/searchfieldplacement/toolbar
timestamp: 2025-10-29T00:13:48.781Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [searchfieldplacement](/documentation/swiftui/searchfieldplacement)

**Type Property**

# toolbar

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+, watchOS 8.0+

> The search field appears in the toolbar.

```swift
static let toolbar: SearchFieldPlacement
```

## Discussion

The precise placement depends on the platform:

- In iOS and watchOS, the search field appears below the navigation bar and is revealed by scrolling.
- In iPadOS, the search field appears in the trailing navigation bar.
- In macOS, the search field appears in the trailing toolbar.

## Getting a search field placement

- [automatic](/documentation/swiftui/searchfieldplacement/automatic)
- [navigationBarDrawer](/documentation/swiftui/searchfieldplacement/navigationbardrawer)
- [navigationBarDrawer(displayMode:)](/documentation/swiftui/searchfieldplacement/navigationbardrawer(displaymode:))
- [sidebar](/documentation/swiftui/searchfieldplacement/sidebar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
