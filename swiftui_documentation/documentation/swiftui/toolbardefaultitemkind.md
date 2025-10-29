---
title: ToolbarDefaultItemKind
description: A kind of toolbar item a  adds by default.
source: https://developer.apple.com/documentation/swiftui/toolbardefaultitemkind
timestamp: 2025-10-29T00:12:23.788Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarDefaultItemKind

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A kind of toolbar item a  adds by default.

```swift
struct ToolbarDefaultItemKind
```

## Overview

`View`s can add toolbar items clients may wish to remove or customize. A default item kind can be passed to the [toolbar(removing:)](/documentation/swiftui/view/toolbar(removing:)) modifier to remove the item. Documentation on the `View` placing the default item should reference the `ToolbarDefaultItemKind` used to remove the item.

## Getting the default item types

- [sidebarToggle](/documentation/swiftui/toolbardefaultitemkind/sidebartoggle) The sidebar toggle toolbar item a  adds by default.

## Type Properties

- [search](/documentation/swiftui/toolbardefaultitemkind/search) The search item added by a  modifier.
- [title](/documentation/swiftui/toolbardefaultitemkind/title) The title and subtitle shown in title bar / navigation bar.

## Removing default items

- [toolbar(removing:)](/documentation/swiftui/view/toolbar(removing:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
