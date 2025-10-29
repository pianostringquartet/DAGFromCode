---
title: webViewScrollPosition(_:)
description: Associates a binding to a scroll position with the web view.
source: https://developer.apple.com/documentation/swiftui/view/webviewscrollposition(_:)
timestamp: 2025-10-29T00:12:13.754Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# webViewScrollPosition(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, visionOS 26.0+

> Associates a binding to a scroll position with the web view.

```swift
nonisolated func webViewScrollPosition(_ position: Binding<ScrollPosition>) -> some View
```

## Discussion

> [!NOTE]
> `WebView` does not support scrolling to a view with an identity. It only supports scrolling to a concrete offset, or to an edge.

## Displaying web content

- [WebView](/documentation/WebKit/WebView-swift.struct)
- [WebPage](/documentation/WebKit/WebPage)
- [webViewBackForwardNavigationGestures(_:)](/documentation/swiftui/view/webviewbackforwardnavigationgestures(_:))
- [webViewContentBackground(_:)](/documentation/swiftui/view/webviewcontentbackground(_:))
- [webViewContextMenu(menu:)](/documentation/swiftui/view/webviewcontextmenu(menu:))
- [webViewElementFullscreenBehavior(_:)](/documentation/swiftui/view/webviewelementfullscreenbehavior(_:))
- [webViewLinkPreviews(_:)](/documentation/swiftui/view/webviewlinkpreviews(_:))
- [webViewMagnificationGestures(_:)](/documentation/swiftui/view/webviewmagnificationgestures(_:))
- [webViewOnScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/webviewonscrollgeometrychange(for:of:action:))
- [webViewScrollInputBehavior(_:for:)](/documentation/swiftui/view/webviewscrollinputbehavior(_:for:))
- [webViewTextSelection(_:)](/documentation/swiftui/view/webviewtextselection(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
