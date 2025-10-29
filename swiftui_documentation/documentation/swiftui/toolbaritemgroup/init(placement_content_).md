---
title: init(placement:content:)
description: Creates a toolbar item group with a specified placement and content.
source: https://developer.apple.com/documentation/swiftui/toolbaritemgroup/init(placement:content:)
timestamp: 2025-10-29T00:13:13.242Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemgroup](/documentation/swiftui/toolbaritemgroup)

**Initializer**

# init(placement:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a toolbar item group with a specified placement and content.

```swift
init(placement: ToolbarItemPlacement = .automatic, @ViewBuilder content: () -> Content)
```

## Discussion

- placement: Which section of the toolbar all of its vended `ToolbarItem`s should be placed in.
- content: The content of the group. Each view specified in the `ViewBuilder` will be given its own `ToolbarItem` in the toolbar.

## Creating a toolbar item group

- [init(placement:content:label:)](/documentation/swiftui/toolbaritemgroup/init(placement:content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
