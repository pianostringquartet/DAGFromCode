---
title: init(viewing:viewer:)
description: Creates a document group capable of viewing file documents.
source: https://developer.apple.com/documentation/swiftui/documentgroup/init(viewing:viewer:)
timestamp: 2025-10-29T00:12:26.834Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgroup](/documentation/swiftui/documentgroup)

**Initializer**

# init(viewing:viewer:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a document group capable of viewing file documents.

```swift
nonisolated init(viewing documentType: Document.Type, @ViewBuilder viewer: @escaping (FileDocumentConfiguration<Document>) -> Content)
```

## Parameters

**documentType**

The type of document your app can view.



**viewer**

The viewing UI for the provided document.



## Discussion

Use this method to create a document group that can view files of a specific type. The example below creates a new document viewer for `MyImageFormatDocument` and displays them with `MyImageFormatViewer`:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        DocumentGroup(viewing: MyImageFormatDocument.self) { file in
            MyImageFormatViewer(image: file.document)
        }
    }
}
```

You tell the system about the app’s role with respect to the document type by setting the [CFBundle Type Role](/documentation/BundleResources/Information-Property-List/CFBundleDocumentTypes/CFBundleTypeRole) `Info.plist` key with a value of `Viewer`.

## Creating a document group

- [init(newDocument:editor:)](/documentation/swiftui/documentgroup/init(newdocument:editor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
