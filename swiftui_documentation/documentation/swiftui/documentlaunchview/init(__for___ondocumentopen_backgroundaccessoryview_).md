---
title: init(_:for:_:onDocumentOpen:backgroundAccessoryView:)
description: Creates a view to present when launching document-related user experiences using a localized title, custom actions, and a background accessory view.
source: https://developer.apple.com/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:backgroundaccessoryview:)
timestamp: 2025-10-29T00:11:05.196Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentlaunchview](/documentation/swiftui/documentlaunchview)

**Initializer**

# init(_:for:_:onDocumentOpen:backgroundAccessoryView:)

**Available on:** iOS 18.0+, iPadOS 18.0+

> Creates a view to present when launching document-related user experiences using a localized title, custom actions, and a background accessory view.

```swift
init(_ title: LocalizedStringKey, for contentTypes: [UTType], @ViewBuilder _ actions: () -> Actions, @ViewBuilder onDocumentOpen: @escaping (URL) -> DocumentView, @ViewBuilder backgroundAccessoryView: @escaping (DocumentLaunchGeometryProxy) -> some View)
```

## Parameters

**title**

A title key to use for the view title.



**contentTypes**

Content types that the view can open.



**actions**

A view builder returning the view’s actions



**onDocumentOpen**

A closure that handles an open file.



**backgroundAccessoryView**

A view builder for returning the view’s background accessory view.



## Discussion

> [!NOTE]
> An alternative to `DocumentLaunchView` is a scene variant of this API: [Document Group Launch Scene](/documentation/swiftui/documentgrouplaunchscene). If the app definition contains `DocumentGroup` scenes, consider using a `DocumentGroupLaunchScene` instead of this view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
