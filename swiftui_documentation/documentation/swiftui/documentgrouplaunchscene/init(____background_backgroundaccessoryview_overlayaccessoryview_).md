---
title: init(_:_:background:backgroundAccessoryView:overlayAccessoryView:)
description: Creates a launch scene for document-based applications with a title, a set of actions, and a background.
source: https://developer.apple.com/documentation/swiftui/documentgrouplaunchscene/init(_:_:background:backgroundaccessoryview:overlayaccessoryview:)
timestamp: 2025-10-29T00:13:12.336Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgrouplaunchscene](/documentation/swiftui/documentgrouplaunchscene)

**Initializer**

# init(_:_:background:backgroundAccessoryView:overlayAccessoryView:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, visionOS 2.0+

> Creates a launch scene for document-based applications with a title, a set of actions, and a background.

```swift
nonisolated init(_ title: LocalizedStringKey, @ViewBuilder _ actions: () -> Actions, @ViewBuilder background: () -> some View, @ViewBuilder backgroundAccessoryView: @escaping (DocumentLaunchGeometryProxy) -> some View, @ViewBuilder overlayAccessoryView: @escaping (DocumentLaunchGeometryProxy) -> some View)
```

## Parameters

**title**

A key to use for the view title.



**actions**

A view builder for returning the view’s actions.



**background**

The background of the scene.



**backgroundAccessoryView**

A view builder for returning the view’s background accessory view.



**overlayAccessoryView**

A view builder for returning the view’s overlay accessory view.



## Discussion

Use a `DocumentGroupLaunchScene` alongside any [Document Group](/documentation/swiftui/documentgroup) scenes. If you don’t implement a `DocumentGroup` in the app declaration, you can get the same design by implementing a [Document Launch View](/documentation/swiftui/documentlaunchview).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
