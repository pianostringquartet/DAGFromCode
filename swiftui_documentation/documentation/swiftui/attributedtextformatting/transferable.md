---
title: AttributedTextFormatting.Transferable
description: A transferable representation of an attributed string interpreted in a SwiftUI environment.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/transferable
timestamp: 2025-10-29T00:11:09.831Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting)

**Structure**

# AttributedTextFormatting.Transferable

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A transferable representation of an attributed string interpreted in a SwiftUI environment.

```swift
struct Transferable
```

## Overview

Use this type e.g. with drag and drop APIs or to create a [fileExporter(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:item:contenttypes:defaultfilename:oncompletion:oncancellation:)).

```swift
struct RichTextEditorView: View {
    @State private var text: AttributedString = ""
    @Environment(\.self) private var environment
    @State var fileExporterIsPresented: Bool = false

    var body: some View {
        TextEditor(text: $text)
            .toolbar {
                Button("Save") {
                    fileExporterIsPresented = true
                }
            }
            .fileExporter(
                isPresented: $fileExporterIsPresented,
                item: AttributedTextFormatting.Transferable(text: text, in: environment)
            ) { result in
                handleResult(result)
            }
            .dropDestination(
                for: AttributedTextFormatting.Transferable.self
            ) { transferables, _ in
                text.replaceSelection(
                    &selection,
                    with: transferables.map {
                        AttributedString(transferable: $0, in: environment)
                    }.joined(separator: AttributedString("\n")))
                return true
            }
    }
}
```

To extract text the text after importing, use attributed string’s `Foundation/AttributedString/init(transferable:in:)`.

Supported content types include:

- [rtfd](/documentation/UniformTypeIdentifiers/UTType-swift.struct/rtfd)
- [rtf](/documentation/UniformTypeIdentifiers/UTType-swift.struct/rtf)

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Transferable](/documentation/CoreTransferable/Transferable)

## Initializers

- [init(text:in:)](/documentation/swiftui/attributedtextformatting/transferable/init(text:in:)) Create a transferable representation of an attributed string as interpreted in a SwiftUI environment.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
