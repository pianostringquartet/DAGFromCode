---
title: openDocument
description: An action in the environment that presents an existing document.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/opendocument
timestamp: 2025-10-29T00:09:56.930Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# openDocument

**Available on:** macOS 13.0+

> An action in the environment that presents an existing document.

```swift
var openDocument: OpenDocumentAction { get }
```

## Discussion

Use the `openDocument` environment value to get the instance of the [Open Document Action](/documentation/swiftui/opendocumentaction) structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to present an existing document. You call the instance directly because it defines a [callAsFunction(at:)](/documentation/swiftui/opendocumentaction/callasfunction(at:)) method that Swift calls when you call the instance.

For example, you can create a button that opens the document at the specified URL:

```swift
struct OpenDocumentButton: View {
    var url: URL
    @Environment(\.openDocument) private var openDocument

    var body: some View {
        Button(url.deletingPathExtension().lastPathComponent) {
            Task {
                do {
                    try await openDocument(at: url)
                } catch {
                    // Handle error
                }
            }
        }
    }
}
```

The above example uses a `do-catch` statement to handle any errors that the open document action might throw. It also places the action inside a task and awaits the result because the action operates asynchronously.

To present an existing document, your app must define a [Document Group](/documentation/swiftui/documentgroup) that handles the content type of the specified file. For a document that’s already open, the system brings the existing window to the front. Otherwise, the system opens a new window.

## Opening a document programmatically

- [newDocument](/documentation/swiftui/environmentvalues/newdocument)
- [NewDocumentAction](/documentation/swiftui/newdocumentaction)
- [OpenDocumentAction](/documentation/swiftui/opendocumentaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
