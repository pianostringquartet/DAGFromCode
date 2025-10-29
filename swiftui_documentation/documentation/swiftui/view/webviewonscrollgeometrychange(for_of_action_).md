---
title: webViewOnScrollGeometryChange(for:of:action:)
description: Adds an action to be performed when a value, created from a scroll geometry, changes.
source: https://developer.apple.com/documentation/swiftui/view/webviewonscrollgeometrychange(for:of:action:)
timestamp: 2025-10-29T00:13:10.542Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# webViewOnScrollGeometryChange(for:of:action:)

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, visionOS 26.0+

> Adds an action to be performed when a value, created from a scroll geometry, changes.

```swift
nonisolated func webViewOnScrollGeometryChange<T>(for type: T.Type, of transform: @escaping (ScrollGeometry) -> T, action: @escaping (T, T) -> Void) -> some View where T : Hashable
```

## Parameters

**type**

The type of value transformed from a [Scroll Geometry](/documentation/swiftui/scrollgeometry).



**transform**

A closure that transforms a [Scroll Geometry](/documentation/swiftui/scrollgeometry) to your type.



**action**

A closure to run when the transformed data changes.



## Return Value

A view that invokes the action when the relevant part of a web view’s scroll geometry changes.

## Discussion

> [!NOTE]
> The content size of web content may exceed the current size of the view’s frame, however it will never be smaller than it.

## Displaying web content

- [WebView](/documentation/WebKit/WebView-swift.struct)
- [WebPage](/documentation/WebKit/WebPage)
- [webViewBackForwardNavigationGestures(_:)](/documentation/swiftui/view/webviewbackforwardnavigationgestures(_:))
- [webViewContentBackground(_:)](/documentation/swiftui/view/webviewcontentbackground(_:))
- [webViewContextMenu(menu:)](/documentation/swiftui/view/webviewcontextmenu(menu:))
- [webViewElementFullscreenBehavior(_:)](/documentation/swiftui/view/webviewelementfullscreenbehavior(_:))
- [webViewLinkPreviews(_:)](/documentation/swiftui/view/webviewlinkpreviews(_:))
- [webViewMagnificationGestures(_:)](/documentation/swiftui/view/webviewmagnificationgestures(_:))
- [webViewScrollInputBehavior(_:for:)](/documentation/swiftui/view/webviewscrollinputbehavior(_:for:))
- [webViewScrollPosition(_:)](/documentation/swiftui/view/webviewscrollposition(_:))
- [webViewTextSelection(_:)](/documentation/swiftui/view/webviewtextselection(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
