---
title: DocumentLaunchView
description: A view to present when launching document-related user experience.
source: https://developer.apple.com/documentation/swiftui/documentlaunchview
timestamp: 2025-10-29T00:11:05.400Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DocumentLaunchView

**Available on:** iOS 18.0+, iPadOS 18.0+

> A view to present when launching document-related user experience.

```swift
struct DocumentLaunchView<Actions, DocumentView> where Actions : View, DocumentView : View
```

## Overview

> [!NOTE]
> An alternative to `DocumentLaunchView` is a scene variant of this API: [Document Group Launch Scene](/documentation/swiftui/documentgrouplaunchscene). If the app definition contains `DocumentGroup` scenes, consider using a `DocumentGroupLaunchScene` instead of this view.

Configure `DocumentLaunchView` to open and display files and trigger custom actions.

For example, an application that offers writing books can present the `DocumentLaunchView` as its launch view:

```swift
public import UniformTypeIdentifiers

struct BookEditorLaunchView: View {

    var body: some View {
        DocumentLaunchView(for: [.book]) {
            NewDocumentButton("Start New Book")
        } onDocumentOpen: { url in
            BookEditor(url)
        }
    }
}

struct BookEditor: View {
    init(_ url: URL) { }
}

extension UTType {
    static let book = UTType(exportedAs: "com.example.bookEditor")
}
```

## Conforms To

- [View](/documentation/swiftui/view)

## Initializers

- [init(_:for:_:onDocumentOpen:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:)) Creates a view to present when launching document-related user experiences using a localized title and custom actions.
- [init(_:for:_:onDocumentOpen:background:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:background:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, and a background view.
- [init(_:for:_:onDocumentOpen:background:backgroundAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:background:backgroundaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, a background view, and a background accessory view.
- [init(_:for:_:onDocumentOpen:background:backgroundAccessoryView:overlayAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:background:backgroundaccessoryview:overlayaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, a background view, and accessory views.
- [init(_:for:_:onDocumentOpen:background:overlayAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:background:overlayaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, a background view, and an overlay accessory view.
- [init(_:for:_:onDocumentOpen:backgroundAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:backgroundaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, and a background accessory view.
- [init(_:for:_:onDocumentOpen:backgroundAccessoryView:overlayAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:backgroundaccessoryview:overlayaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, and accessory views.
- [init(_:for:_:onDocumentOpen:overlayAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:_:ondocumentopen:overlayaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, and an overlay accessory view.
- [init(_:for:backgroundStyle:_:onDocumentOpen:)](/documentation/swiftui/documentlaunchview/init(_:for:backgroundstyle:_:ondocumentopen:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, and a background style.
- [init(_:for:backgroundStyle:_:onDocumentOpen:backgroundAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:backgroundstyle:_:ondocumentopen:backgroundaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, a background style, and a background accessory view.
- [init(_:for:backgroundStyle:_:onDocumentOpen:backgroundAccessoryView:overlayAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:backgroundstyle:_:ondocumentopen:backgroundaccessoryview:overlayaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, a background style, and accessory views.
- [init(_:for:backgroundStyle:_:onDocumentOpen:overlayAccessoryView:)](/documentation/swiftui/documentlaunchview/init(_:for:backgroundstyle:_:ondocumentopen:overlayaccessoryview:)) Creates a view to present when launching document-related user experiences using a localized title, custom actions, a background style, and an overlay accessory view.

## Instance Properties

- [body](/documentation/swiftui/documentlaunchview/body) The body of the view.

## Configuring the document launch experience

- [DocumentGroupLaunchScene](/documentation/swiftui/documentgrouplaunchscene)
- [DocumentLaunchGeometryProxy](/documentation/swiftui/documentlaunchgeometryproxy)
- [DefaultDocumentGroupLaunchActions](/documentation/swiftui/defaultdocumentgrouplaunchactions)
- [NewDocumentButton](/documentation/swiftui/newdocumentbutton)
- [DocumentBaseBox](/documentation/swiftui/documentbasebox)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
