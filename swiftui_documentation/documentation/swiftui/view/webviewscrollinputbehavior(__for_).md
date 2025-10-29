---
title: webViewScrollInputBehavior(_:for:)
description: Enables or disables scrolling in web views when using particular inputs.
source: https://developer.apple.com/documentation/swiftui/view/webviewscrollinputbehavior(_:for:)
timestamp: 2025-10-29T00:11:38.632Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# webViewScrollInputBehavior(_:for:)

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, visionOS 26.0+

> Enables or disables scrolling in web views when using particular inputs.

```swift
nonisolated func webViewScrollInputBehavior(_ behavior: ScrollInputBehavior, for input: ScrollInputKind) -> some View
```

## Parameters

**behavior**

Whether scrolling should be enabled or disabled for this input.



**input**

The input for which to enable or disable scrolling.



## Return Value

A view with the configured scroll input behavior for web views.

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
- [webViewScrollPosition(_:)](/documentation/swiftui/view/webviewscrollposition(_:))
- [webViewTextSelection(_:)](/documentation/swiftui/view/webviewtextselection(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
