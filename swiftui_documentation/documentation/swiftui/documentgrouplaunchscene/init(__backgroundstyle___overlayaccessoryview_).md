---
title: init(_:backgroundStyle:_:overlayAccessoryView:)
description: Creates a launch scene for document-based applications with a title, a background style, a set of actions, and an overlay accessory view.
source: https://developer.apple.com/documentation/swiftui/documentgrouplaunchscene/init(_:backgroundstyle:_:overlayaccessoryview:)
timestamp: 2025-10-29T00:12:42.311Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgrouplaunchscene](/documentation/swiftui/documentgrouplaunchscene)

**Initializer**

# init(_:backgroundStyle:_:overlayAccessoryView:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, visionOS 2.0+

> Creates a launch scene for document-based applications with a title, a background style, a set of actions, and an overlay accessory view.

```swift
nonisolated init<B>(_ title: LocalizedStringKey, backgroundStyle: B = BackgroundStyle(), @ViewBuilder _ actions: () -> Actions = { DefaultDocumentGroupLaunchActions() }, @ViewBuilder overlayAccessoryView: @escaping (DocumentLaunchGeometryProxy) -> some View) where B : ShapeStyle
```

## Parameters

**title**

A key to use for the view title.



**backgroundStyle**

A background style of the view.



**actions**

A view builder for returning the view’s actions.



**overlayAccessoryView**

A view builder for returning the view’s overlay accessory view.



## Discussion

Use a `DocumentGroupLaunchScene` alongside any [Document Group](/documentation/swiftui/documentgroup) scenes. If you don’t implement a `DocumentGroup` in the app declaration, you can get the same design by implementing a [Document Launch View](/documentation/swiftui/documentlaunchview).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
