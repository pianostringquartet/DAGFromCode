---
title: fileMover(isPresented:files:onCompletion:)
description: Presents a system interface for allowing the user to move a collection of existing files to a new location.
source: https://developer.apple.com/documentation/swiftui/view/filemover(ispresented:files:oncompletion:)
timestamp: 2025-10-29T00:15:30.348Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileMover(isPresented:files:onCompletion:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Presents a system interface for allowing the user to move a collection of existing files to a new location.

```swift
nonisolated func fileMover<C>(isPresented: Binding<Bool>, files: C, onCompletion: @escaping (Result<[URL], any Error>) -> Void) -> some View where C : Collection, C.Element == URL
```

## Parameters

**isPresented**

A binding to whether the interface should be shown.



**files**

A collection of `URL`s for the files to be moved.



**onCompletion**

A callback that will be invoked when the operation has has succeeded or failed. To access the received URLs, call `startAccessingSecurityScopedResource`. When the access is no longer required, call `stopAccessingSecurityScopedResource`.



## Discussion

> [!NOTE]
> This interface provides security-scoped URLs. Call the `startAccessingSecurityScopedResource` method to access or bookmark the URLs, and the `stopAccessingSecurityScopedResource` method to release the access.

In order for the interface to appear, both `isPresented` must be `true` and `files` must not be empty. When the operation is finished, `isPresented` will be set to `false` before `onCompletion` is called. If the user cancels the operation, `isPresented` will be set to `false` and `onCompletion` will not be called.

## Moving a file

- [fileMover(isPresented:file:onCompletion:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:))
- [fileMover(isPresented:file:onCompletion:onCancellation:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:oncancellation:))
- [fileMover(isPresented:files:onCompletion:onCancellation:)](/documentation/swiftui/view/filemover(ispresented:files:oncompletion:oncancellation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
