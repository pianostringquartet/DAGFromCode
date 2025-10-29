---
title: init(_:contentType:prepareDocumentURL:)
description: Creates and opens new documents.
source: https://developer.apple.com/documentation/swiftui/newdocumentbutton/init(_:contenttype:preparedocumenturl:)
timestamp: 2025-10-29T00:14:31.794Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [newdocumentbutton](/documentation/swiftui/newdocumentbutton)

**Initializer**

# init(_:contentType:prepareDocumentURL:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Creates and opens new documents.

```swift
init(_ label: Text? = nil, contentType: UTType, prepareDocumentURL: @escaping () async throws -> URL? = { nil })
```

## Parameters

**label**

A label for the button.



**contentType**

A content type of the document to create.



**prepareDocumentURL**

A closure that is called when a user presses the button. At this point, you can present a document template picker or another UI that allows users to choose a theme, configuration, or a template to create a document from. Return a prepared document, or throw an error if document creation failed. Return `nil` to request creation of an empty document.



## Discussion

A button that presents a document template picker and creates documents can be implemented like this:

```swift
   struct ChooseDocumentTemplateButton: View {
       @State private var showTemplatePicker = false
       @State private var documentCreationContinuation:
           CheckedContinuation<URL?, any Error>?

       var body: some View {
           NewDocumentButton(contentType: .text) {
               try await withCheckedThrowingContinuation { continuation in
                   documentCreationContinuation = continuation
                   showTemplatePicker = true
               }
           }
           .fullScreenCover(isPresented: $showTemplatePicker) {
               TemplatePicker($documentCreationContinuation)
           }
       }
   }

   struct TemplatePicker: View {
       @Binding var documentCreationContinuation:
           CheckedContinuation<URL?, any Error>?

       ...

       func present(document: URL) {
           documentCreationContinuation.resume(returning: document)
           documentCreationContinuation = nil
       }
   }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
