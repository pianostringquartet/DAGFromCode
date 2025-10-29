---
title: documentBrowserContextMenu(_:)
description: Adds to a  actions that accept a list of selected files as their parameter.
source: https://developer.apple.com/documentation/swiftui/scene/documentbrowsercontextmenu(_:)
timestamp: 2025-10-29T00:15:32.782Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# documentBrowserContextMenu(_:)

**Available on:** iOS 18.1+, iPadOS 18.1+, Mac Catalyst 18.1+, visionOS 1.0+

> Adds to a  actions that accept a list of selected files as their parameter.

```swift
@MainActor @preconcurrency func documentBrowserContextMenu(@ViewBuilder _ menu: @escaping ([URL]?) -> some View) -> some Scene
```

## Parameters

**menu**

Items representing the content of the menu.



## Discussion

The actions are displayed in the document browser navigation bar when a document browser is in Select mode, and also added to context menu for the file items.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
