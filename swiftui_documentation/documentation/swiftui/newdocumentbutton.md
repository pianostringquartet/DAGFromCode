---
title: NewDocumentButton
description: A button that creates and opens new documents.
source: https://developer.apple.com/documentation/swiftui/newdocumentbutton
timestamp: 2025-10-29T00:11:24.536Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NewDocumentButton

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> A button that creates and opens new documents.

```swift
struct NewDocumentButton<Label> where Label : View
```

## Overview

Use a new document button to give people the option to create documents in your app. In the following example, there are two new document buttons, both support [Text](/documentation/swiftui/text) labels. When the user taps or clicks the first button, the system creates a new document in the directory currently open in the document browser. The second button creates a new document from a template.

```swift
@State private var isTemplatePickerPresented = false
@State private var documentCreationContinuation:
    CheckedContinuation<TextDocument?, any Error>?

var body: some Scene {
    DocumentGroupLaunchScene("My Documents") {
        NewDocumentButton("Start Writing…")
        NewDocumentButton("Choose a Template", for: MyDocument.self) {
            try await withCheckedThrowingContinuation { continuation in
                documentCreationContinuation = continuation
                isTemplatePickerPresented = true
            }
        }
        .fullScreenCover(isPresented: $isTemplatePickerPresented) {
            TemplatePicker(continuation: $documentCreationContinuation)
        }
    }
}
```

If you don’t provide a custom label, the system provides a button with the default “Create Document” label.

## Conforms To

- [View](/documentation/swiftui/view)

## Initializers

- [init(_:contentType:)](/documentation/swiftui/newdocumentbutton/init(_:contenttype:)) Creates and opens new documents.
- [init(_:contentType:prepareDocumentURL:)](/documentation/swiftui/newdocumentbutton/init(_:contenttype:preparedocumenturl:)) Creates and opens new documents.
- [init(_:for:contentType:prepareDocument:)](/documentation/swiftui/newdocumentbutton/init(_:for:contenttype:preparedocument:)) Creates and opens new documents.

## Configuring the document launch experience

- [DocumentGroupLaunchScene](/documentation/swiftui/documentgrouplaunchscene)
- [DocumentLaunchView](/documentation/swiftui/documentlaunchview)
- [DocumentLaunchGeometryProxy](/documentation/swiftui/documentlaunchgeometryproxy)
- [DefaultDocumentGroupLaunchActions](/documentation/swiftui/defaultdocumentgrouplaunchactions)
- [DocumentBaseBox](/documentation/swiftui/documentbasebox)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
