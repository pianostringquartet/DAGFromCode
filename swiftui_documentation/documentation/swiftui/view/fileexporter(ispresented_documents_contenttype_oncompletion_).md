---
title: fileExporter(isPresented:documents:contentType:onCompletion:)
description: Presents a system interface for exporting a collection of value type documents to files on disk.
source: https://developer.apple.com/documentation/swiftui/view/fileexporter(ispresented:documents:contenttype:oncompletion:)
timestamp: 2025-10-29T00:10:24.686Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileExporter(isPresented:documents:contentType:onCompletion:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Presents a system interface for exporting a collection of value type documents to files on disk.

```swift
nonisolated func fileExporter<C>(isPresented: Binding<Bool>, documents: C, contentType: UTType, onCompletion: @escaping (Result<[URL], any Error>) -> Void) -> some View where C : Collection, C.Element : FileDocument
```

## Parameters

**isPresented**

A binding to whether the interface should be shown.



**documents**

The collection of in-memory documents to export.



**contentType**

The content type to use for the exported file.



**onCompletion**

A callback that will be invoked when the operation has has succeeded or failed.



## Discussion

In order for the interface to appear, both `isPresented` must be `true` and `documents` must not be empty. When the operation is finished, `isPresented` will be set to `false` before `onCompletion` is called. If the user cancels the operation, `isPresented` will be set to `false` and `onCompletion` will not be called.

The `contentType` provided must be included within the document type’s `writableContentTypes`, otherwise the first valid writable content type will be used instead.

## Exporting to file

- [fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttype:defaultfilename:oncompletion:))
- [fileExporter(isPresented:document:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttypes:defaultfilename:oncompletion:oncancellation:))
- [fileExporter(isPresented:documents:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttypes:oncompletion:oncancellation:))
- [fileExporter(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:item:contenttypes:defaultfilename:oncompletion:oncancellation:))
- [fileExporter(isPresented:items:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:items:contenttypes:oncompletion:oncancellation:))
- [fileExporterFilenameLabel(_:)](/documentation/swiftui/view/fileexporterfilenamelabel(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
