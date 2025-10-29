---
title: newDocument
description: An action in the environment that presents a new document.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/newdocument
timestamp: 2025-10-29T00:10:20.134Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# newDocument

**Available on:** macOS 13.0+

> An action in the environment that presents a new document.

```swift
var newDocument: NewDocumentAction { get }
```

## Discussion

Use the `newDocument` environment value to get the instance of the [New Document Action](/documentation/swiftui/newdocumentaction) structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to present a new document. You call the instance directly because it defines a [callAsFunction(_:)](/documentation/swiftui/newdocumentaction/callasfunction(_:)) method that Swift calls when you call the instance.

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

## Opening a document programmatically

- [NewDocumentAction](/documentation/swiftui/newdocumentaction)
- [openDocument](/documentation/swiftui/environmentvalues/opendocument)
- [OpenDocumentAction](/documentation/swiftui/opendocumentaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
