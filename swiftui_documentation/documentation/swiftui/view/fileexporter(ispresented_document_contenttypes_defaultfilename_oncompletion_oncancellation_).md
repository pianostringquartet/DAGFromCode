---
title: fileExporter(isPresented:document:contentTypes:defaultFilename:onCompletion:onCancellation:)
description: Presents a system interface for allowing the user to export a  to a file on disk.
source: https://developer.apple.com/documentation/swiftui/view/fileexporter(ispresented:document:contenttypes:defaultfilename:oncompletion:oncancellation:)
timestamp: 2025-10-29T00:12:54.593Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileExporter(isPresented:document:contentTypes:defaultFilename:onCompletion:onCancellation:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Presents a system interface for allowing the user to export a  to a file on disk.

```swift
nonisolated func fileExporter<D>(isPresented: Binding<Bool>, document: D?, contentTypes: [UTType] = [], defaultFilename: String? = nil, onCompletion: @escaping (Result<URL, any Error>) -> Void, onCancellation: @escaping () -> Void = {}) -> some View where D : FileDocument
```

## Parameters

**isPresented**

A binding to whether the interface should be shown.



**document**

The in-memory document to export.



**contentTypes**

The list of supported content types which can be exported. If not provided, `FileDocument.writableContentTypes` are used.



**defaultFilename**

If provided, the default name to use for the exported file, which will the user will have an opportunity to edit prior to the export.



**onCompletion**

A callback that will be invoked when the operation has succeeded or failed. The `result` indicates whether the operation succeeded or failed.



**onCancellation**

A callback that will be invoked if the user cancels the operation.



## Discussion

In order for the interface to appear, `isPresented` must be `true`. When the operation is finished, `isPresented` will be set to `false` before `onCompletion` is called. If the user cancels the operation, `isPresented` will be set to `false` and `onCancellation` will be called.

## Exporting to file

- [fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttype:defaultfilename:oncompletion:))
- [fileExporter(isPresented:documents:contentType:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttype:oncompletion:))
- [fileExporter(isPresented:documents:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttypes:oncompletion:oncancellation:))
- [fileExporter(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:item:contenttypes:defaultfilename:oncompletion:oncancellation:))
- [fileExporter(isPresented:items:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:items:contenttypes:oncompletion:oncancellation:))
- [fileExporterFilenameLabel(_:)](/documentation/swiftui/view/fileexporterfilenamelabel(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
