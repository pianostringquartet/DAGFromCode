---
title: webViewContextMenu(menu:)
description: Adds an item-based context menu to a WebView, replacing the default set of context menu items.
source: https://developer.apple.com/documentation/swiftui/view/webviewcontextmenu(menu:)
timestamp: 2025-10-29T00:12:14.761Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# webViewContextMenu(menu:)

**Available on:** macOS 26.0+

> Adds an item-based context menu to a WebView, replacing the default set of context menu items.

```swift
nonisolated func webViewContextMenu(@ViewBuilder menu: @escaping @MainActor (WebView.ActivatedElementInfo) -> some View) -> some View
```

## Parameters

**menu**

A closure that produces the menu. The single parameter to the closure describes the type of webpage element that was acted upon.



## Return Value

A view that can display an item-based context menu.

## Displaying web content

- [WebView](/documentation/WebKit/WebView-swift.struct)
- [WebPage](/documentation/WebKit/WebPage)
- [webViewBackForwardNavigationGestures(_:)](/documentation/swiftui/view/webviewbackforwardnavigationgestures(_:))
- [webViewContentBackground(_:)](/documentation/swiftui/view/webviewcontentbackground(_:))
- [webViewElementFullscreenBehavior(_:)](/documentation/swiftui/view/webviewelementfullscreenbehavior(_:))
- [webViewLinkPreviews(_:)](/documentation/swiftui/view/webviewlinkpreviews(_:))
- [webViewMagnificationGestures(_:)](/documentation/swiftui/view/webviewmagnificationgestures(_:))
- [webViewOnScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/webviewonscrollgeometrychange(for:of:action:))
- [webViewScrollInputBehavior(_:for:)](/documentation/swiftui/view/webviewscrollinputbehavior(_:for:))
- [webViewScrollPosition(_:)](/documentation/swiftui/view/webviewscrollposition(_:))
- [webViewTextSelection(_:)](/documentation/swiftui/view/webviewtextselection(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
