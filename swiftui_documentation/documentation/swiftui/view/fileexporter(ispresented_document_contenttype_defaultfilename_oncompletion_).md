---
title: fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)
description: Presents a system interface for exporting a document that’s stored in a value type, like a structure, to a file on disk.
source: https://developer.apple.com/documentation/swiftui/view/fileexporter(ispresented:document:contenttype:defaultfilename:oncompletion:)
timestamp: 2025-10-29T00:14:52.295Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Presents a system interface for exporting a document that’s stored in a value type, like a structure, to a file on disk.

```swift
nonisolated func fileExporter<D>(isPresented: Binding<Bool>, document: D?, contentType: UTType, defaultFilename: String? = nil, onCompletion: @escaping (Result<URL, any Error>) -> Void) -> some View where D : FileDocument
```

## Parameters

**isPresented**

A binding to whether the interface should be shown.



**document**

The in-memory document to export.



**contentType**

The content type to use for the exported file.



**defaultFilename**

If provided, the default name to use for the exported file, which will the user will have an opportunity to edit prior to the export.



**onCompletion**

A callback that will be invoked when the operation has has succeeded or failed.



## Discussion

In order for the interface to appear, both `isPresented` must be `true` and `document` must not be `nil`. When the operation is finished, `isPresented` will be set to `false` before `onCompletion` is called. If the user cancels the operation, `isPresented` will be set to `false` and `onCompletion` will not be called.

The `contentType` provided must be included within the document type’s `writableContentTypes`, otherwise the first valid writable content type will be used instead.

## Exporting to file

- [fileExporter(isPresented:documents:contentType:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttype:oncompletion:))
- [fileExporter(isPresented:document:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttypes:defaultfilename:oncompletion:oncancellation:))
- [fileExporter(isPresented:documents:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttypes:oncompletion:oncancellation:))
- [fileExporter(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:item:contenttypes:defaultfilename:oncompletion:oncancellation:))
- [fileExporter(isPresented:items:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:items:contenttypes:oncompletion:oncancellation:))
- [fileExporterFilenameLabel(_:)](/documentation/swiftui/view/fileexporterfilenamelabel(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
