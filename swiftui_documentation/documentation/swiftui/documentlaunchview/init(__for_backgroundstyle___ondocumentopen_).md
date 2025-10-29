---
title: init(_:for:backgroundStyle:_:onDocumentOpen:)
description: Creates a view to present when launching document-related user experiences using a localized title, custom actions, and a background style.
source: https://developer.apple.com/documentation/swiftui/documentlaunchview/init(_:for:backgroundstyle:_:ondocumentopen:)
timestamp: 2025-10-29T00:12:19.179Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentlaunchview](/documentation/swiftui/documentlaunchview)

**Initializer**

# init(_:for:backgroundStyle:_:onDocumentOpen:)

**Available on:** iOS 18.0+, iPadOS 18.0+

> Creates a view to present when launching document-related user experiences using a localized title, custom actions, and a background style.

```swift
init<B>(_ title: LocalizedStringKey, for contentTypes: [UTType], backgroundStyle: B, @ViewBuilder _ actions: () -> Actions, @ViewBuilder onDocumentOpen: @escaping (URL) -> DocumentView) where B : ShapeStyle
```

## Parameters

**title**

A title key to use for the view title.



**contentTypes**

Content types that the view can open.



**backgroundStyle**

An optional background style of the view.



**actions**

A view builder returning the view’s actions



**onDocumentOpen**

A closure that handles an open file.



## Discussion

> [!NOTE]
> An alternative to `DocumentLaunchView` is a scene variant of this API: [Document Group Launch Scene](/documentation/swiftui/documentgrouplaunchscene). If the app definition contains `DocumentGroup` scenes, consider using a `DocumentGroupLaunchScene` instead of this view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
