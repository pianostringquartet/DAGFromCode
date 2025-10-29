---
title: Modal presentations
description: Present content in a separate view that offers focused interaction.
source: https://developer.apple.com/documentation/swiftui/modal-presentations
timestamp: 2025-10-29T00:10:49.290Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Modal presentations

> Present content in a separate view that offers focused interaction.

## Overview

To draw attention to an important, narrowly scoped task, you display a modal presentation, like an alert, popover, sheet, or confirmation dialog.



In SwiftUI, you create a modal presentation using a view modifier that defines how the presentation looks and the condition under which SwiftUI presents it. SwiftUI detects when the condition changes and makes the presentation for you. Because you provide a [Binding](/documentation/swiftui/binding) to the condition that initiates the presentation, SwiftUI can reset the underlying value when the user dismisses the presentation.

For design guidance, see [modality](/design/Human-Interface-Guidelines/modality) in the Human Interface Guidelines.

## Configuring a dialog

- [DialogSeverity](/documentation/swiftui/dialogseverity) The severity of an alert or confirmation dialog.

## Showing a sheet, cover, or popover

- [sheet(isPresented:onDismiss:content:)](/documentation/swiftui/view/sheet(ispresented:ondismiss:content:)) Presents a sheet when a binding to a Boolean value that you provide is true.
- [sheet(item:onDismiss:content:)](/documentation/swiftui/view/sheet(item:ondismiss:content:)) Presents a sheet using the given item as a data source for the sheet’s content.
- [fullScreenCover(isPresented:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(ispresented:ondismiss:content:)) Presents a modal view that covers as much of the screen as possible when binding to a Boolean value you provide is true.
- [fullScreenCover(item:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(item:ondismiss:content:)) Presents a modal view that covers as much of the screen as possible using the binding you provide as a data source for the sheet’s content.
- [popover(item:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(item:attachmentanchor:arrowedge:content:)) Presents a popover using the given item as a data source for the popover’s content.
- [popover(isPresented:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(ispresented:attachmentanchor:arrowedge:content:)) Presents a popover when a given condition is true.
- [PopoverAttachmentAnchor](/documentation/swiftui/popoverattachmentanchor) An attachment anchor for a popover.

## Adapting a presentation size

- [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:)) Specifies how to adapt a presentation to horizontally and vertically compact size classes.
- [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:)) Specifies how to adapt a presentation to compact size classes.
- [PresentationAdaptation](/documentation/swiftui/presentationadaptation) Strategies for adapting a presentation to a different size class.
- [presentationSizing(_:)](/documentation/swiftui/view/presentationsizing(_:)) Sets the sizing of the containing presentation.
- [PresentationSizing](/documentation/swiftui/presentationsizing) A type that defines the size of the presentation content and how the presentation size adjusts to its content’s size changing.
- [PresentationSizingRoot](/documentation/swiftui/presentationsizingroot) A proxy to a view provided to the presentation with a defined presentation size.
- [PresentationSizingContext](/documentation/swiftui/presentationsizingcontext) Contextual information about a presentation.

## Configuring a sheet’s height

- [presentationDetents(_:)](/documentation/swiftui/view/presentationdetents(_:)) Sets the available detents for the enclosing sheet.
- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:)) Sets the available detents for the enclosing sheet, giving you programmatic control of the currently selected detent.
- [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:)) Configures the behavior of swipe gestures on a presentation.
- [presentationDragIndicator(_:)](/documentation/swiftui/view/presentationdragindicator(_:)) Sets the visibility of the drag indicator on top of a sheet.
- [PresentationDetent](/documentation/swiftui/presentationdetent) A type that represents a height where a sheet naturally rests.
- [CustomPresentationDetent](/documentation/swiftui/custompresentationdetent) The definition of a custom detent with a calculated height.
- [PresentationContentInteraction](/documentation/swiftui/presentationcontentinteraction) A behavior that you can use to influence how a presentation responds to swipe gestures.

## Styling a sheet and its background

- [presentationCornerRadius(_:)](/documentation/swiftui/view/presentationcornerradius(_:)) Requests that the presentation have a specific corner radius.
- [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:)) Sets the presentation background of the enclosing sheet using a shape style.
- [presentationBackground(alignment:content:)](/documentation/swiftui/view/presentationbackground(alignment:content:)) Sets the presentation background of the enclosing sheet to a custom view.
- [presentationBackgroundInteraction(_:)](/documentation/swiftui/view/presentationbackgroundinteraction(_:)) Controls whether people can interact with the view behind a presentation.
- [PresentationBackgroundInteraction](/documentation/swiftui/presentationbackgroundinteraction) The kinds of interaction available to views behind a presentation.

## Presenting an alert

- [AlertScene](/documentation/swiftui/alertscene) A scene that renders itself as a standalone alert dialog.
- [alert(_:isPresented:actions:)](/documentation/swiftui/view/alert(_:ispresented:actions:)) Presents an alert when a given condition is true, using a text view for the title.
- [alert(_:isPresented:presenting:actions:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:)) Presents an alert using the given data to produce the alert’s content and a text view as a title.
- [alert(isPresented:error:actions:)](/documentation/swiftui/view/alert(ispresented:error:actions:)) Presents an alert when an error is present.
- [alert(_:isPresented:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:actions:message:)) Presents an alert with a message when a given condition is true using a text view as a title.
- [alert(_:isPresented:presenting:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:message:)) Presents an alert with a message using the given data to produce the alert’s content and a text view for a title.
- [alert(isPresented:error:actions:message:)](/documentation/swiftui/view/alert(ispresented:error:actions:message:)) Presents an alert with a message when an error is present.

## Getting confirmation for an action

- [confirmationDialog(_:isPresented:titleVisibility:actions:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:actions:)) Presents a confirmation dialog when a given condition is true, using a text view for the title.
- [confirmationDialog(_:isPresented:titleVisibility:presenting:actions:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:)) Presents a confirmation dialog using data to produce the dialog’s content and a text view for the title.
- [dismissalConfirmationDialog(_:shouldPresent:actions:)](/documentation/swiftui/view/dismissalconfirmationdialog(_:shouldpresent:actions:)) Presents a confirmation dialog when a dismiss action has been triggered.

## Showing a confirmation dialog with a message

- [confirmationDialog(_:isPresented:titleVisibility:actions:message:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:actions:message:)) Presents a confirmation dialog with a message when a given condition is true, using a text view for the title.
- [confirmationDialog(_:isPresented:titleVisibility:presenting:actions:message:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:message:)) Presents a confirmation dialog with a message using data to produce the dialog’s content and a text view for the message.
- [dismissalConfirmationDialog(_:shouldPresent:actions:message:)](/documentation/swiftui/view/dismissalconfirmationdialog(_:shouldpresent:actions:message:)) Presents a confirmation dialog when a dismiss action has been triggered.

## Configuring a dialog

- [dialogIcon(_:)](/documentation/swiftui/view/dialogicon(_:)) Configures the icon used by dialogs within this view.
- [dialogIcon(_:)](/documentation/swiftui/scene/dialogicon(_:)) Configures the icon used by alerts.
- [dialogSeverity(_:)](/documentation/swiftui/view/dialogseverity(_:))
- [dialogSeverity(_:)](/documentation/swiftui/scene/dialogseverity(_:)) Sets the severity for alerts.
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(issuppressed:)) Enables user suppression of dialogs and alerts presented within , with a default suppression message on macOS. Unused on other platforms.
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/scene/dialogsuppressiontoggle(issuppressed:)) Enables user suppression of an alert with a custom suppression message.
- [dialogSuppressionToggle(_:isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(_:issuppressed:)) Enables user suppression of dialogs and alerts presented within , with a custom suppression message on macOS. Unused on other platforms.

## Exporting to file

- [fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttype:defaultfilename:oncompletion:)) Presents a system interface for exporting a document that’s stored in a value type, like a structure, to a file on disk.
- [fileExporter(isPresented:documents:contentType:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttype:oncompletion:)) Presents a system interface for exporting a collection of value type documents to files on disk.
- [fileExporter(isPresented:document:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttypes:defaultfilename:oncompletion:oncancellation:)) Presents a system interface for allowing the user to export a  to a file on disk.
- [fileExporter(isPresented:documents:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttypes:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to export a collection of documents that conform to  to files on disk.
- [fileExporter(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:item:contenttypes:defaultfilename:oncompletion:oncancellation:)) Presents a system interface allowing the user to export a  item to file on disk.
- [fileExporter(isPresented:items:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:items:contenttypes:oncompletion:oncancellation:)) Presents a system interface allowing the user to export a collection of items to files on disk.
- [fileExporterFilenameLabel(_:)](/documentation/swiftui/view/fileexporterfilenamelabel(_:)) On macOS, configures the  with a label for the file name field.

## Importing from file

- [fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)](/documentation/swiftui/view/fileimporter(ispresented:allowedcontenttypes:allowsmultipleselection:oncompletion:)) Presents a system interface for allowing the user to import multiple files.
- [fileImporter(isPresented:allowedContentTypes:onCompletion:)](/documentation/swiftui/view/fileimporter(ispresented:allowedcontenttypes:oncompletion:)) Presents a system interface for allowing the user to import an existing file.
- [fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)](/documentation/swiftui/view/fileimporter(ispresented:allowedcontenttypes:allowsmultipleselection:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to import multiple files.

## Moving a file

- [fileMover(isPresented:file:onCompletion:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:)) Presents a system interface for allowing the user to move an existing file to a new location.
- [fileMover(isPresented:files:onCompletion:)](/documentation/swiftui/view/filemover(ispresented:files:oncompletion:)) Presents a system interface for allowing the user to move a collection of existing files to a new location.
- [fileMover(isPresented:file:onCompletion:onCancellation:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to move an existing file to a new location.
- [fileMover(isPresented:files:onCompletion:onCancellation:)](/documentation/swiftui/view/filemover(ispresented:files:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to move a collection of existing files to a new location.

## Configuring a file dialog

- [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:)) On macOS, configures the , , or  to provide a refined URL search experience: include or exclude hidden files, allow searching by tag, etc.
- [fileDialogConfirmationLabel(_:)](/documentation/swiftui/view/filedialogconfirmationlabel(_:)) On macOS, configures the , , or  with a custom confirmation button label.
- [fileDialogCustomizationID(_:)](/documentation/swiftui/view/filedialogcustomizationid(_:)) On macOS, configures the , , or  to persist and restore the file dialog configuration.
- [fileDialogDefaultDirectory(_:)](/documentation/swiftui/view/filedialogdefaultdirectory(_:)) Configures the , , or  to open with the specified default directory.
- [fileDialogImportsUnresolvedAliases(_:)](/documentation/swiftui/view/filedialogimportsunresolvedaliases(_:)) On macOS, configures the , , or  behavior when a user chooses an alias.
- [fileDialogMessage(_:)](/documentation/swiftui/view/filedialogmessage(_:)) On macOS, configures the , , or  with a custom text that is presented to the user, similar to a title.
- [fileDialogURLEnabled(_:)](/documentation/swiftui/view/filedialogurlenabled(_:)) On macOS, configures the  or  to conditionally disable presented URLs.
- [FileDialogBrowserOptions](/documentation/swiftui/filedialogbrowseroptions) The way that file dialogs present the file system.

## Presenting an inspector

- [inspector(isPresented:content:)](/documentation/swiftui/view/inspector(ispresented:content:)) Inserts an inspector at the applied position in the view hierarchy.
- [inspectorColumnWidth(_:)](/documentation/swiftui/view/inspectorcolumnwidth(_:)) Sets a fixed, preferred width for the inspector containing this view when presented as a trailing column.
- [inspectorColumnWidth(min:ideal:max:)](/documentation/swiftui/view/inspectorcolumnwidth(min:ideal:max:)) Sets a flexible, preferred width for the inspector in a trailing-column presentation.

## Dismissing a presentation

- [isPresented](/documentation/swiftui/environmentvalues/ispresented) A Boolean value that indicates whether the view associated with this environment is currently presented.
- [dismiss](/documentation/swiftui/environmentvalues/dismiss) An action that dismisses the current presentation.
- [DismissAction](/documentation/swiftui/dismissaction) An action that dismisses a presentation.
- [interactiveDismissDisabled(_:)](/documentation/swiftui/view/interactivedismissdisabled(_:)) Conditionally prevents interactive dismissal of presentations like popovers, sheets, and inspectors.

## Deprecated modal presentations

- [Alert](/documentation/swiftui/alert) A representation of an alert presentation.
- [ActionSheet](/documentation/swiftui/actionsheet) A representation of an action sheet presentation.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Documents](/documentation/swiftui/documents)
- [Navigation](/documentation/swiftui/navigation)
- [Toolbars](/documentation/swiftui/toolbars)
- [Search](/documentation/swiftui/search)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
