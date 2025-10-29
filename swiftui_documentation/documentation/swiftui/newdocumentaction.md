---
title: NewDocumentAction
description: An action that presents a new document.
source: https://developer.apple.com/documentation/swiftui/newdocumentaction
timestamp: 2025-10-29T00:14:08.283Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NewDocumentAction

**Available on:** macOS 13.0+

> An action that presents a new document.

```swift
@MainActor @preconcurrency struct NewDocumentAction
```

## Overview

Use the [new Document](/documentation/swiftui/environmentvalues/newdocument) environment value to get the instance of this structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to present a new document. You call the instance directly because it defines a [callAsFunction(_:)](/documentation/swiftui/newdocumentaction/callasfunction(_:)) method that Swift calls when you call the instance.

For example, you can define a button that creates a new document from the selected text:

```swift
struct NewDocumentFromSelection: View {
    @FocusedBinding(\.selectedText) private var selectedText: String?
    @Environment(\.newDocument) private var newDocument

    var body: some View {
        Button("New Document With Selection") {
            newDocument(TextDocument(text: selectedText))
        }
        .disabled(selectedText?.isEmpty != false)
    }
}
```

The above example assumes that you define a `TextDocument` that conforms to the [File Document](/documentation/swiftui/filedocument) or [Reference File Document](/documentation/swiftui/referencefiledocument) protocol, and a [Document Group](/documentation/swiftui/documentgroup) that handles the associated file type.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Calling the action

- [callAsFunction(_:)](/documentation/swiftui/newdocumentaction/callasfunction(_:)) Presents a new document window.
- [callAsFunction(contentType:)](/documentation/swiftui/newdocumentaction/callasfunction(contenttype:)) Presents a new document window.
- [callAsFunction(contentType:prepareDocument:)](/documentation/swiftui/newdocumentaction/callasfunction(contenttype:preparedocument:)) Presents a new document window with preset contents.

## Opening a document programmatically

- [newDocument](/documentation/swiftui/environmentvalues/newdocument)
- [openDocument](/documentation/swiftui/environmentvalues/opendocument)
- [OpenDocumentAction](/documentation/swiftui/opendocumentaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
