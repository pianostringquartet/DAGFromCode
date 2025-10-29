---
title: Presentation modifiers
description: Define additional views for the view to present under specified conditions.
source: https://developer.apple.com/documentation/swiftui/view-presentation
timestamp: 2025-10-29T00:09:31.733Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Presentation modifiers

> Define additional views for the view to present under specified conditions.

## Overview

Use presentation modifiers to show different kinds of modal presentations, like alerts, popovers, sheets, and confirmation dialogs.

Because SwiftUI is a declarative framework, you don’t call a method at the moment you want to present the modal. Rather, you define how the presentation looks and the condition under which SwiftUI should present it. SwiftUI detects when the condition changes and makes the presentation for you. Because you provide a [Binding](/documentation/swiftui/binding) to the condition that initiates the presentation, SwiftUI can reset the underlying value when the user dismisses the presentation.

For more information about how to use these modifiers, see [Modal](/documentation/swiftui/modal-presentations).

## Alerts

- [alert(_:isPresented:actions:)](/documentation/swiftui/view/alert(_:ispresented:actions:)) Presents an alert when a given condition is true, using a text view for the title.
- [alert(_:isPresented:presenting:actions:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:)) Presents an alert using the given data to produce the alert’s content and a text view as a title.
- [alert(isPresented:error:actions:)](/documentation/swiftui/view/alert(ispresented:error:actions:)) Presents an alert when an error is present.

## Alerts with a message

- [alert(_:isPresented:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:actions:message:)) Presents an alert with a message when a given condition is true using a text view as a title.
- [alert(_:isPresented:presenting:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:message:)) Presents an alert with a message using the given data to produce the alert’s content and a text view for a title.
- [alert(isPresented:error:actions:message:)](/documentation/swiftui/view/alert(ispresented:error:actions:message:)) Presents an alert with a message when an error is present.

## Confirmation dialogs

- [confirmationDialog(_:isPresented:titleVisibility:actions:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:actions:)) Presents a confirmation dialog when a given condition is true, using a text view for the title.
- [confirmationDialog(_:isPresented:titleVisibility:presenting:actions:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:)) Presents a confirmation dialog using data to produce the dialog’s content and a text view for the title.
- [dismissalConfirmationDialog(_:shouldPresent:actions:)](/documentation/swiftui/view/dismissalconfirmationdialog(_:shouldpresent:actions:)) Presents a confirmation dialog when a dismiss action has been triggered.

## Confirmation dialogs with a message

- [confirmationDialog(_:isPresented:titleVisibility:actions:message:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:actions:message:)) Presents a confirmation dialog with a message when a given condition is true, using a text view for the title.
- [confirmationDialog(_:isPresented:titleVisibility:presenting:actions:message:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:message:)) Presents a confirmation dialog with a message using data to produce the dialog’s content and a text view for the message.
- [dismissalConfirmationDialog(_:shouldPresent:actions:message:)](/documentation/swiftui/view/dismissalconfirmationdialog(_:shouldpresent:actions:message:)) Presents a confirmation dialog when a dismiss action has been triggered.

## Dialog configuration

- [dialogIcon(_:)](/documentation/swiftui/view/dialogicon(_:)) Configures the icon used by dialogs within this view.
- [dialogSeverity(_:)](/documentation/swiftui/view/dialogseverity(_:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(issuppressed:)) Enables user suppression of dialogs and alerts presented within , with a default suppression message on macOS. Unused on other platforms.
- [dialogSuppressionToggle(_:isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(_:issuppressed:)) Enables user suppression of dialogs and alerts presented within , with a custom suppression message on macOS. Unused on other platforms.

## Sheets

- [sheet(isPresented:onDismiss:content:)](/documentation/swiftui/view/sheet(ispresented:ondismiss:content:)) Presents a sheet when a binding to a Boolean value that you provide is true.
- [sheet(item:onDismiss:content:)](/documentation/swiftui/view/sheet(item:ondismiss:content:)) Presents a sheet using the given item as a data source for the sheet’s content.
- [fullScreenCover(isPresented:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(ispresented:ondismiss:content:)) Presents a modal view that covers as much of the screen as possible when binding to a Boolean value you provide is true.
- [fullScreenCover(item:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(item:ondismiss:content:)) Presents a modal view that covers as much of the screen as possible using the binding you provide as a data source for the sheet’s content.

## Popovers

- [popover(item:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(item:attachmentanchor:arrowedge:content:)) Presents a popover using the given item as a data source for the popover’s content.
- [popover(isPresented:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(ispresented:attachmentanchor:arrowedge:content:)) Presents a popover when a given condition is true.

## Sheet and popover configuration

- [interactiveDismissDisabled(_:)](/documentation/swiftui/view/interactivedismissdisabled(_:)) Conditionally prevents interactive dismissal of presentations like popovers, sheets, and inspectors.
- [presentationDetents(_:)](/documentation/swiftui/view/presentationdetents(_:)) Sets the available detents for the enclosing sheet.
- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:)) Sets the available detents for the enclosing sheet, giving you programmatic control of the currently selected detent.
- [presentationDragIndicator(_:)](/documentation/swiftui/view/presentationdragindicator(_:)) Sets the visibility of the drag indicator on top of a sheet.
- [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:)) Sets the presentation background of the enclosing sheet using a shape style.
- [presentationBackground(alignment:content:)](/documentation/swiftui/view/presentationbackground(alignment:content:)) Sets the presentation background of the enclosing sheet to a custom view.
- [presentationBackgroundInteraction(_:)](/documentation/swiftui/view/presentationbackgroundinteraction(_:)) Controls whether people can interact with the view behind a presentation.
- [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:)) Specifies how to adapt a presentation to horizontally and vertically compact size classes.
- [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:)) Specifies how to adapt a presentation to compact size classes.
- [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:)) Configures the behavior of swipe gestures on a presentation.
- [presentationCornerRadius(_:)](/documentation/swiftui/view/presentationcornerradius(_:)) Requests that the presentation have a specific corner radius.
- [presentationSizing(_:)](/documentation/swiftui/view/presentationsizing(_:)) Sets the sizing of the containing presentation.

## File exporter

- [fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttype:defaultfilename:oncompletion:)) Presents a system interface for exporting a document that’s stored in a value type, like a structure, to a file on disk.
- [fileExporter(isPresented:documents:contentType:onCompletion:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttype:oncompletion:)) Presents a system interface for exporting a collection of value type documents to files on disk.
- [fileExporter(isPresented:document:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:document:contenttypes:defaultfilename:oncompletion:oncancellation:)) Presents a system interface for allowing the user to export a  to a file on disk.
- [fileExporter(isPresented:documents:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:documents:contenttypes:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to export a collection of documents that conform to  to files on disk.
- [fileExporter(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:item:contenttypes:defaultfilename:oncompletion:oncancellation:)) Presents a system interface allowing the user to export a  item to file on disk.
- [fileExporter(isPresented:items:contentTypes:onCompletion:onCancellation:)](/documentation/swiftui/view/fileexporter(ispresented:items:contenttypes:oncompletion:oncancellation:)) Presents a system interface allowing the user to export a collection of items to files on disk.
- [fileExporterFilenameLabel(_:)](/documentation/swiftui/view/fileexporterfilenamelabel(_:)) On macOS, configures the  with a label for the file name field.

## File importer

- [fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)](/documentation/swiftui/view/fileimporter(ispresented:allowedcontenttypes:allowsmultipleselection:oncompletion:)) Presents a system interface for allowing the user to import multiple files.
- [fileImporter(isPresented:allowedContentTypes:onCompletion:)](/documentation/swiftui/view/fileimporter(ispresented:allowedcontenttypes:oncompletion:)) Presents a system interface for allowing the user to import an existing file.
- [fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)](/documentation/swiftui/view/fileimporter(ispresented:allowedcontenttypes:allowsmultipleselection:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to import multiple files.

## File mover

- [fileMover(isPresented:file:onCompletion:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:)) Presents a system interface for allowing the user to move an existing file to a new location.
- [fileMover(isPresented:files:onCompletion:)](/documentation/swiftui/view/filemover(ispresented:files:oncompletion:)) Presents a system interface for allowing the user to move a collection of existing files to a new location.
- [fileMover(isPresented:file:onCompletion:onCancellation:)](/documentation/swiftui/view/filemover(ispresented:file:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to move an existing file to a new location.
- [fileMover(isPresented:files:onCompletion:onCancellation:)](/documentation/swiftui/view/filemover(ispresented:files:oncompletion:oncancellation:)) Presents a system dialog for allowing the user to move a collection of existing files to a new location.

## File dialog configuration

- [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:)) On macOS, configures the , , or  to provide a refined URL search experience: include or exclude hidden files, allow searching by tag, etc.
- [fileDialogConfirmationLabel(_:)](/documentation/swiftui/view/filedialogconfirmationlabel(_:)) On macOS, configures the , , or  with a custom confirmation button label.
- [fileDialogCustomizationID(_:)](/documentation/swiftui/view/filedialogcustomizationid(_:)) On macOS, configures the , , or  to persist and restore the file dialog configuration.
- [fileDialogDefaultDirectory(_:)](/documentation/swiftui/view/filedialogdefaultdirectory(_:)) Configures the , , or  to open with the specified default directory.
- [fileDialogImportsUnresolvedAliases(_:)](/documentation/swiftui/view/filedialogimportsunresolvedaliases(_:)) On macOS, configures the , , or  behavior when a user chooses an alias.
- [fileDialogMessage(_:)](/documentation/swiftui/view/filedialogmessage(_:)) On macOS, configures the , , or  with a custom text that is presented to the user, similar to a title.
- [fileDialogURLEnabled(_:)](/documentation/swiftui/view/filedialogurlenabled(_:)) On macOS, configures the  or  to conditionally disable presented URLs.

## Inspectors

- [inspector(isPresented:content:)](/documentation/swiftui/view/inspector(ispresented:content:)) Inserts an inspector at the applied position in the view hierarchy.
- [inspectorColumnWidth(_:)](/documentation/swiftui/view/inspectorcolumnwidth(_:)) Sets a fixed, preferred width for the inspector containing this view when presented as a trailing column.
- [inspectorColumnWidth(min:ideal:max:)](/documentation/swiftui/view/inspectorcolumnwidth(min:ideal:max:)) Sets a flexible, preferred width for the inspector in a trailing-column presentation.

## Quick look previews

- [quickLookPreview(_:)](/documentation/swiftui/view/quicklookpreview(_:)) Presents a Quick Look preview of the contents of a single URL.
- [quickLookPreview(_:in:)](/documentation/swiftui/view/quicklookpreview(_:in:)) Presents a Quick Look preview of the URLs you provide.

## Family Sharing

- [familyActivityPicker(isPresented:selection:)](/documentation/swiftui/view/familyactivitypicker(ispresented:selection:)) Presents an activity picker view as a sheet.
- [familyActivityPicker(headerText:footerText:isPresented:selection:)](/documentation/swiftui/view/familyactivitypicker(headertext:footertext:ispresented:selection:)) Presents an activity picker view as a sheet.

## Live Activities

- [activitySystemActionForegroundColor(_:)](/documentation/swiftui/view/activitysystemactionforegroundcolor(_:)) The text color for the auxiliary action button that the system shows next to a Live Activity on the Lock Screen.
- [activityBackgroundTint(_:)](/documentation/swiftui/view/activitybackgroundtint(_:)) Sets the tint color for the background of a Live Activity that appears on the Lock Screen.

## Apple Music

- [musicSubscriptionOffer(isPresented:options:onLoadCompletion:)](/documentation/swiftui/view/musicsubscriptionoffer(ispresented:options:onloadcompletion:)) Initiates the process of presenting a sheet with subscription offers for Apple Music when the  binding is .

## StoreKit

- [appStoreOverlay(isPresented:configuration:)](/documentation/swiftui/view/appstoreoverlay(ispresented:configuration:)) Presents a StoreKit overlay when a given condition is true.
- [manageSubscriptionsSheet(isPresented:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:))
- [refundRequestSheet(for:isPresented:onDismiss:)](/documentation/swiftui/view/refundrequestsheet(for:ispresented:ondismiss:)) Display the refund request sheet for the given transaction.
- [offerCodeRedemption(isPresented:onCompletion:)](/documentation/swiftui/view/offercoderedemption(ispresented:oncompletion:)) Presents a sheet that enables users to redeem subscription offer codes that you configure in App Store Connect.

## PhotoKit

- [photosPicker(isPresented:selection:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:)) Presents a Photos picker that selects a .
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:photolibrary:)) Presents a Photos picker that selects a  from a given photo library.
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:)) Presents a Photos picker that selects a collection of .
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:photolibrary:)) Presents a Photos picker that selects a collection of  from a given photo library.
- [photosPickerAccessoryVisibility(_:edges:)](/documentation/swiftui/view/photospickeraccessoryvisibility(_:edges:)) Sets the accessory visibility of the Photos picker. Accessories include anything between the content and the edge, like the navigation bar or the sidebar.
- [photosPickerDisabledCapabilities(_:)](/documentation/swiftui/view/photospickerdisabledcapabilities(_:)) Disables capabilities of the Photos picker.
- [photosPickerStyle(_:)](/documentation/swiftui/view/photospickerstyle(_:)) Sets the mode of the Photos picker.

## Providing interactivity

- [Input and event modifiers](/documentation/swiftui/view-input-and-events)
- [Search modifiers](/documentation/swiftui/view-search)
- [State modifiers](/documentation/swiftui/view-state)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
