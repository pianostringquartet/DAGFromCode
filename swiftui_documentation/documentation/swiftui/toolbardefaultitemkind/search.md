---
title: search
description: The search item added by a  modifier.
source: https://developer.apple.com/documentation/swiftui/toolbardefaultitemkind/search
timestamp: 2025-10-29T00:10:13.572Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbardefaultitemkind](/documentation/swiftui/toolbardefaultitemkind)

**Type Property**

# search

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> The search item added by a  modifier.

```swift
static let search: ToolbarDefaultItemKind
```

## Discussion

Use a `.search` default item kind with `DefaultToolbarItem/init(kind:placment:)` to customize the [Toolbar Item Placement](/documentation/swiftui/toolbaritemplacement) of a default item kind. The search default item kind can be placed in the `.bottomBar` on iPhone only. All available platforms support `.topBarTrailing` and `.automatic`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
