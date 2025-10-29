---
title: fileMover(isPresented:files:onCompletion:onCancellation:)
description: Presents a system dialog for allowing the user to move a collection of existing files to a new location.
source: https://developer.apple.com/documentation/swiftui/view/filemover(ispresented:files:oncompletion:oncancellation:)
timestamp: 2025-10-29T00:15:30.507Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileMover(isPresented:files:onCompletion:onCancellation:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Presents a system dialog for allowing the user to move a collection of existing files to a new location.

```swift
nonisolated func fileMover<C>(isPresented: Binding<Bool>, files: C, onCompletion: @escaping (Result<[URL], any Error>) -> Void, onCancellation: @escaping () -> Void) -> some View where C : Collection, C.Element == URL
```

## Parameters

**isPresented**

A binding to whether the dialog should be shown.



**files**

A collection of URLs for the files to be moved.



**onCompletion**

A callback that will be invoked when the operation has succeeded or failed. The `result` indicates whether the operation succeeded or failed. To access the received URLs, call `startAccessingSecurityScopedResource`. When the access is no longer required, call `stopAccessingSecurityScopedResource`.



**onCancellation**

A callback that will be invoked if the user cancels the operation.



## Discussion

> [!NOTE]
> This dialog provides security-scoped URLs. Call the `startAccessingSecurityScopedResource` method to access or bookmark the URLs, and the `stopAccessingSecurityScopedResource` method to release the access.

For example, a button that allows the user to move files might look like this:

```swift
  struct MoveFilesButton: View {
      @Binding var files: [URL]
      @State private var showFileMover = false
      var onCompletion: (URL) -> Void
      var onCancellation: (() -> Void)?

      var body: some View {
          Button {
              showFileMover = true
          } label: {
              Label("Choose destination", systemImage: "folder.circle")
          }
          .fileMover(isPresented: $showFileMover, files: files) { result in
              switch result {
              case .success(let urls):
                  urls.forEach { url in
                      guard url.startAccessingSecurityScopedResource() else {
                          return
                      }
                      onCompletion(url)
                      url.stopAccessingSecurityScopedResource()
                  }
              case .failure(let error):
                  print(error)
                  // handle error
              }
          } onCancellation: {
              onCancellation?()
          }
      }
  }
```

## Moving a file

- [fileMover(isPresented:file:onCompletion:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:))
- [fileMover(isPresented:files:onCompletion:)](/documentation/swiftui/view/filemover(ispresented:files:oncompletion:))
- [fileMover(isPresented:file:onCompletion:onCancellation:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:oncancellation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
