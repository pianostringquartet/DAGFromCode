---
title: OpenDocumentAction
description: An action that presents an existing document.
source: https://developer.apple.com/documentation/swiftui/opendocumentaction
timestamp: 2025-10-29T00:13:44.339Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# OpenDocumentAction

**Available on:** macOS 13.0+

> An action that presents an existing document.

```swift
@MainActor struct OpenDocumentAction
```

## Overview

Use the [open Document](/documentation/swiftui/environmentvalues/opendocument) environment value to get the instance of this structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to present an existing document. You call the instance directly because it defines a [callAsFunction(at:)](/documentation/swiftui/opendocumentaction/callasfunction(at:)) method that Swift calls when you call the instance.

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

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Calling the action

- [callAsFunction(at:)](/documentation/swiftui/opendocumentaction/callasfunction(at:)) Opens the document at the specified file URL.

## Opening a document programmatically

- [newDocument](/documentation/swiftui/environmentvalues/newdocument)
- [NewDocumentAction](/documentation/swiftui/newdocumentaction)
- [openDocument](/documentation/swiftui/environmentvalues/opendocument)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
