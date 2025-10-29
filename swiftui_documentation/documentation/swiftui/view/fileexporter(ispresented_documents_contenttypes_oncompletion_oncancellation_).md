---
title: fileExporter(isPresented:documents:contentTypes:onCompletion:onCancellation:)
description: Presents a system dialog for allowing the user to export a collection of documents that conform to  to files on disk.
source: https://developer.apple.com/documentation/swiftui/view/fileexporter(ispresented:documents:contenttypes:oncompletion:oncancellation:)
timestamp: 2025-10-29T00:12:30.730Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileExporter(isPresented:documents:contentTypes:onCompletion:onCancellation:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Presents a system dialog for allowing the user to export a collection of documents that conform to  to files on disk.

```swift
nonisolated func fileExporter<C>(isPresented: Binding<Bool>, documents: C, contentTypes: [UTType] = [], onCompletion: @escaping (Result<[URL], any Error>) -> Void, onCancellation: @escaping () -> Void = {}) -> some View where C : Collection, C.Element : FileDocument
```

## Parameters

**isPresented**

A binding to whether the dialog should be shown.



**documents**

The in-memory documents to export.



**contentTypes**

The list of supported content types which can be exported. If not provided, `FileDocument.writableContentTypes` are used.



**onCompletion**

A callback that will be invoked when the operation has succeeded or failed. The `result` indicates whether the operation succeeded or failed.



**onCancellation**

A callback that will be invoked if the user cancels the operation.



## Discussion

In order for the dialog to appear, `isPresented` must be `true`. When the operation is finished, `isPresented` will be set to `false` before `onCompletion` is called. If the user cancels the operation, `isPresented` will be set to `false` and `onCancellation` will be called.

## Exporting to file

- [fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttype:defaultfilename:oncompletion:))
- [fileExporter(isPresented:documents:contentType:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttype:oncompletion:))
- [fileExporter(isPresented:document:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttypes:defaultfilename:oncompletion:oncancellation:))
- [fileExporter(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:item:contenttypes:defaultfilename:oncompletion:oncancellation:))
- [fileExporter(isPresented:items:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:items:contenttypes:oncompletion:oncancellation:))
- [fileExporterFilenameLabel(_:)](/documentation/swiftui/view/fileexporterfilenamelabel(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
