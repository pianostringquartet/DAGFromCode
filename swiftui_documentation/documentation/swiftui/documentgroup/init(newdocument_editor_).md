---
title: init(newDocument:editor:)
description: Creates a document group for creating and editing file documents.
source: https://developer.apple.com/documentation/swiftui/documentgroup/init(newdocument:editor:)
timestamp: 2025-10-29T00:09:16.251Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgroup](/documentation/swiftui/documentgroup)

**Initializer**

# init(newDocument:editor:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a document group for creating and editing file documents.

```swift
@preconcurrency nonisolated init(newDocument: @autoclosure @escaping () -> Document, @ViewBuilder editor: @escaping (FileDocumentConfiguration<Document>) -> Content)
```

## Parameters

**newDocument**

The initial document to use when a user creates a new document.



**editor**

The editing UI for the provided document.



## Discussion

Use a [Document Group](/documentation/swiftui/documentgroup) scene to tell SwiftUI what kinds of documents your app can open when you declare your app using the [App](/documentation/swiftui/app) protocol. You initialize a document group scene by passing in the document model and a view capable of displaying the document’s contents. The document types you supply to [Document Group](/documentation/swiftui/documentgroup) must conform to [File Document](/documentation/swiftui/filedocument) or [Reference File Document](/documentation/swiftui/referencefiledocument). SwiftUI uses the model to add document support to your app. In macOS this includes document-based menu support including the ability to open multiple documents. On iOS this includes a document browser that can navigate to the documents stored on the file system and multiwindow support:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: TextFile()) { file in
            ContentView(document: file.$document)
        }
    }
}
```

The document types you supply to [Document Group](/documentation/swiftui/documentgroup) must conform to [File Document](/documentation/swiftui/filedocument) or [Reference File Document](/documentation/swiftui/referencefiledocument). Your app can support multiple document types by adding additional [Document Group](/documentation/swiftui/documentgroup) scenes.

## Creating a document group

- [init(viewing:viewer:)](/documentation/swiftui/documentgroup/init(viewing:viewer:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
