---
title: webViewContentBackground(_:)
description: Specifies the visibility of the webpage’s natural background color within this view.
source: https://developer.apple.com/documentation/swiftui/view/webviewcontentbackground(_:)
timestamp: 2025-10-29T00:10:00.169Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# webViewContentBackground(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, visionOS 26.0+

> Specifies the visibility of the webpage’s natural background color within this view.

```swift
nonisolated func webViewContentBackground(_ visibility: Visibility) -> some View
```

## Parameters

**visibility**

The visibility to use for the background.



## Return Value

A view with the specified content background visibility.

## Discussion

By default, WebViews are opaque, and use the page’s natural background color as their background color. Use this modifier if you would like to not use this behavior and instead provide a custom background using SwiftUI.

## Displaying web content

- [WebView](/documentation/WebKit/WebView-swift.struct)
- [WebPage](/documentation/WebKit/WebPage)
- [webViewBackForwardNavigationGestures(_:)](/documentation/swiftui/view/webviewbackforwardnavigationgestures(_:))
- [webViewContextMenu(menu:)](/documentation/swiftui/view/webviewcontextmenu(menu:))
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
