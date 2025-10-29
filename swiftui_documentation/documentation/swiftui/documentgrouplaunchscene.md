---
title: DocumentGroupLaunchScene
description: A launch scene for document-based applications.
source: https://developer.apple.com/documentation/swiftui/documentgrouplaunchscene
timestamp: 2025-10-29T00:10:24.949Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DocumentGroupLaunchScene

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, visionOS 2.0+

> A launch scene for document-based applications.

```swift
struct DocumentGroupLaunchScene<Actions> where Actions : View
```

## Overview

You can use this launch scene alongside [Document Group](/documentation/swiftui/documentgroup) scenes. If you don’t implement a `DocumentGroup` in the app declaration, you can get the same design by implementing a [Document Launch View](/documentation/swiftui/documentlaunchview).

If you don’t provide the title of the scene, it displays the application name. If you don’t provide the actions builder, the scene has the default “Create Document” action that creates new documents. To customize the document launch experience, you can replace the standard screen background and title, add decorative views, and add custom actions.

A `DocumentGroupLaunchScene` configures the document browser on the bottom sheet to open content types from all the document groups in the app definition. A `DocumentGroupLaunchScene` also configures the document groups to create documents of the first content type that your application can create and write.

For more information, see `FileDocument.writableContentTypes` and `ReferenceFileDocument.writableContentTypes`.

## Conforms To

- [Scene](/documentation/swiftui/scene)

## Initializers

- [init(_:_:background:)](/documentation/swiftui/documentgrouplaunchscene/init(_:_:background:)) Creates a launch scene for document-based applications with a title, a set of actions, and a background.
- [init(_:_:background:backgroundAccessoryView:)](/documentation/swiftui/documentgrouplaunchscene/init(_:_:background:backgroundaccessoryview:)) Creates a launch scene for document-based applications with a title, a set of actions, a background, and a background accessory view.
- [init(_:_:background:backgroundAccessoryView:overlayAccessoryView:)](/documentation/swiftui/documentgrouplaunchscene/init(_:_:background:backgroundaccessoryview:overlayaccessoryview:)) Creates a launch scene for document-based applications with a title, a set of actions, and a background.
- [init(_:_:background:overlayAccessoryView:)](/documentation/swiftui/documentgrouplaunchscene/init(_:_:background:overlayaccessoryview:)) Creates a launch scene for document-based applications with a title, a set of actions, a background, and an overlay accessory view.
- [init(_:backgroundStyle:_:)](/documentation/swiftui/documentgrouplaunchscene/init(_:backgroundstyle:_:)) Creates a launch scene for document-based applications with a title, a background style, and a set of actions.
- [init(_:backgroundStyle:_:backgroundAccessoryView:)](/documentation/swiftui/documentgrouplaunchscene/init(_:backgroundstyle:_:backgroundaccessoryview:)) Creates a launch scene for document-based applications with a title, a background style, a set of actions, and a background accessory view.
- [init(_:backgroundStyle:_:backgroundAccessoryView:overlayAccessoryView:)](/documentation/swiftui/documentgrouplaunchscene/init(_:backgroundstyle:_:backgroundaccessoryview:overlayaccessoryview:)) Creates a launch scene for document-based applications with a title, a background style, a set of actions, and background and overlay accessory views.
- [init(_:backgroundStyle:_:overlayAccessoryView:)](/documentation/swiftui/documentgrouplaunchscene/init(_:backgroundstyle:_:overlayaccessoryview:)) Creates a launch scene for document-based applications with a title, a background style, a set of actions, and an overlay accessory view.

## Configuring the document launch experience

- [DocumentLaunchView](/documentation/swiftui/documentlaunchview)
- [DocumentLaunchGeometryProxy](/documentation/swiftui/documentlaunchgeometryproxy)
- [DefaultDocumentGroupLaunchActions](/documentation/swiftui/defaultdocumentgrouplaunchactions)
- [NewDocumentButton](/documentation/swiftui/newdocumentbutton)
- [DocumentBaseBox](/documentation/swiftui/documentbasebox)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
