---
title: SearchFieldPlacement
description: The placement of a search field in a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/searchfieldplacement
timestamp: 2025-10-29T00:14:25.423Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SearchFieldPlacement

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The placement of a search field in a view hierarchy.

```swift
struct SearchFieldPlacement
```

## Overview

You can give a preferred placement to any of the searchable modifiers, like [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:)):

```swift
var body: some View {
    NavigationView {
        PrimaryView()
        SecondaryView()
        Text("Select a primary and secondary item")
    }
    .searchable(text: $text, placement: .sidebar)
}
```

Depending on the containing view hierachy, SwiftUI might not be able to fulfill your request.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting a search field placement

- [automatic](/documentation/swiftui/searchfieldplacement/automatic) SwiftUI places the search field automatically.
- [navigationBarDrawer](/documentation/swiftui/searchfieldplacement/navigationbardrawer) The search field appears in the navigation bar.
- [navigationBarDrawer(displayMode:)](/documentation/swiftui/searchfieldplacement/navigationbardrawer(displaymode:)) The search field appears in the navigation bar using the specified display mode.
- [sidebar](/documentation/swiftui/searchfieldplacement/sidebar) The search field appears in the sidebar of a navigation view.
- [toolbar](/documentation/swiftui/searchfieldplacement/toolbar) The search field appears in the toolbar.

## Supporting types

- [SearchFieldPlacement.NavigationBarDrawerDisplayMode](/documentation/swiftui/searchfieldplacement/navigationbardrawerdisplaymode) A mode that determines when to display a search field that appears in a navigation bar.

## Type Properties

- [toolbarPrincipal](/documentation/swiftui/searchfieldplacement/toolbarprincipal) The search field appears in the principal section of the toolbar.

## Searching your app’s data model

- [Adding a search interface to your app](/documentation/swiftui/adding-a-search-interface-to-your-app)
- [Performing a search operation](/documentation/swiftui/performing-a-search-operation)
- [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:))
- [searchable(text:tokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:placement:prompt:token:))
- [searchable(text:editableTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:placement:prompt:token:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
