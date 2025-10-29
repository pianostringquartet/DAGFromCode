---
title: Documents
description: Enable people to open and manage documents.
source: https://developer.apple.com/documentation/swiftui/documents
timestamp: 2025-10-29T00:09:48.174Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Documents

> Enable people to open and manage documents.

## Overview

Create a user interface for opening and editing documents using the [Document Group](/documentation/swiftui/documentgroup) scene type.



You initialize the scene with a model that describes the organization of the document’s data, and a view hierarchy that SwiftUI uses to display the document’s contents to the user. You can use either a value type model, which you typically store as a structure, that conforms to the [File Document](/documentation/swiftui/filedocument) protocol, or a reference type model you store in a class instance that conforms to the [Reference File Document](/documentation/swiftui/referencefiledocument) protocol. You can also use SwiftData-backed documents using an initializer like [init(editing:contentType:editor:prepareDocument:)](/documentation/swiftui/documentgroup/init(editing:contenttype:editor:preparedocument:)).

SwiftUI supports standard behaviors that users expect from a document-based app, appropriate for each platform, like multiwindow support, open and save panels, drag and drop, and so on. For related design guidance, see [patterns](/design/Human-Interface-Guidelines/patterns) in the Human Interface Guidelines.

## Creating a document

- [Building a document-based app with SwiftUI](/documentation/swiftui/building-a-document-based-app-with-swiftui) Create, save, and open documents in a multiplatform app.
- [Building a document-based app using SwiftData](/documentation/swiftui/building-a-document-based-app-using-swiftdata) Code along with the WWDC presenter to transform an app with SwiftData.
- [DocumentGroup](/documentation/swiftui/documentgroup) A scene that enables support for opening, creating, and saving documents.

## Storing document data in a structure instance

- [FileDocument](/documentation/swiftui/filedocument) A type that you use to serialize documents to and from file.
- [FileDocumentConfiguration](/documentation/swiftui/filedocumentconfiguration) The properties of an open file document.

## Storing document data in a class instance

- [ReferenceFileDocument](/documentation/swiftui/referencefiledocument) A type that you use to serialize reference type documents to and from file.
- [ReferenceFileDocumentConfiguration](/documentation/swiftui/referencefiledocumentconfiguration) The properties of an open reference file document.
- [undoManager](/documentation/swiftui/environmentvalues/undomanager) The undo manager used to register a view’s undo operations.

## Accessing document configuration

- [documentConfiguration](/documentation/swiftui/environmentvalues/documentconfiguration) The configuration of a document in a .
- [DocumentConfiguration](/documentation/swiftui/documentconfiguration)

## Reading and writing documents

- [FileDocumentReadConfiguration](/documentation/swiftui/filedocumentreadconfiguration) The configuration for reading file contents.
- [FileDocumentWriteConfiguration](/documentation/swiftui/filedocumentwriteconfiguration) The configuration for serializing file contents.

## Opening a document programmatically

- [newDocument](/documentation/swiftui/environmentvalues/newdocument) An action in the environment that presents a new document.
- [NewDocumentAction](/documentation/swiftui/newdocumentaction) An action that presents a new document.
- [openDocument](/documentation/swiftui/environmentvalues/opendocument) An action in the environment that presents an existing document.
- [OpenDocumentAction](/documentation/swiftui/opendocumentaction) An action that presents an existing document.

## Configuring the document launch experience

- [DocumentGroupLaunchScene](/documentation/swiftui/documentgrouplaunchscene) A launch scene for document-based applications.
- [DocumentLaunchView](/documentation/swiftui/documentlaunchview) A view to present when launching document-related user experience.
- [DocumentLaunchGeometryProxy](/documentation/swiftui/documentlaunchgeometryproxy) A proxy for access to the frame of the scene and its title view.
- [DefaultDocumentGroupLaunchActions](/documentation/swiftui/defaultdocumentgrouplaunchactions) The default actions for the document group launch scene and the document launch view.
- [NewDocumentButton](/documentation/swiftui/newdocumentbutton) A button that creates and opens new documents.
- [DocumentBaseBox](/documentation/swiftui/documentbasebox) A Box that allows setting its Document base not requiring the caller to know the exact types of the box and its base.

## Renaming a document

- [RenameButton](/documentation/swiftui/renamebutton) A button that triggers a standard rename action.
- [renameAction(_:)](/documentation/swiftui/view/renameaction(_:)) Sets a closure to run for the rename action.
- [rename](/documentation/swiftui/environmentvalues/rename) An action that activates the standard rename interaction.
- [RenameAction](/documentation/swiftui/renameaction) An action that activates a standard rename interaction.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Navigation](/documentation/swiftui/navigation)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Toolbars](/documentation/swiftui/toolbars)
- [Search](/documentation/swiftui/search)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
