---
title: confirmationDialog(_:isPresented:titleVisibility:presenting:actions:)
description: Presents a confirmation dialog using data to produce the dialog’s content and a text view for the title.
source: https://developer.apple.com/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:)
timestamp: 2025-10-29T00:12:51.148Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# confirmationDialog(_:isPresented:titleVisibility:presenting:actions:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Presents a confirmation dialog using data to produce the dialog’s content and a text view for the title.

```swift
nonisolated func confirmationDialog<A, T>(_ title: Text, isPresented: Binding<Bool>, titleVisibility: Visibility = .automatic, presenting data: T?, @ViewBuilder actions: (T) -> A) -> some View where A : View
```

## Parameters

**title**

The title of the dialog.



**isPresented**

A binding to a Boolean value that determines whether to present the dialog. When the user presses or taps the dialog’s default action button, the system sets this value to `false`, dismissing the dialog.



**titleVisibility**

The visibility of the dialog’s title. The default value is [automatic](/documentation/swiftui/visibility/automatic).



**data**

An optional source of truth for the confirmation dialog. The system passes the contents to the modifier’s closures. You use this data to populate the fields of a confirmation dialog that you create that the system displays to the user.



**actions**

A view builder returning the dialog’s actions given the currently available data.



## Discussion

In order for the interface to appear, both `isPresented` must be `true` and `data` must not be `nil`. `data` should not change after the presentation occurs. Any changes which occur after the presentation occurs will be ignored.

Use this method when you need to populate the fields of a confirmation dialog with content from a data source. The example below shows a custom data source, `FileDetails`, that provides data to populate the dialog:

```swift
struct FileDetails: Identifiable {
    var id: String { name }
    let name: String
    let fileType: UTType
}
struct ConfirmFileImport: View {
    @State private var isConfirming = false
    @State private var dialogDetail: FileDetails?
    var body: some View {
        Button("Import File") {
            dialogDetail = FileDetails(
                name: "MyImageFile.png", fileType: .png)
            isConfirming = true
        }
        .confirmationDialog(
            Text("Import New File?"),
            isPresented: $isConfirming, presenting: dialogDetail
        ) { detail in
            Button {
                // Handle import action.
            } label: {
                Text("""
                Import \(detail.name)
                File Type: \(detail.fileType.description)
                """)
            }
            Button("Cancel", role: .cancel) {
                dialogDetail = nil
            }
        }
    }
}
```

All actions in a confirmation dialog will dismiss the dialog after the action runs. The default button will be shown with greater prominence. You can influence the default button by assigning it the [default Action](/documentation/swiftui/keyboardshortcut/defaultaction) keyboard shortcut.

The system may reorder the buttons based on their role and prominence.

Dialogs include a standard dismiss action by default. If you provide a button with a role of [cancel](/documentation/swiftui/buttonrole/cancel), that button takes the place of the default dismiss action. You don’t have to dismiss the presentation with the cancel button’s action.

> [!NOTE]
> In regular size classes in iOS, the system renders confirmation dialogs as a popover that the user dismisses by tapping anywhere outside the popover, rather than displaying the standard dismiss action.

On iOS, tvOS, and watchOS, confirmation dialogs only support controls with labels that are `Text`. Passing any other type of view results in the content being omitted.

## Getting confirmation for an action

- [confirmationDialog(_:isPresented:titleVisibility:actions:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:actions:))
- [dismissalConfirmationDialog(_:shouldPresent:actions:)](/documentation/swiftui/view/dismissalconfirmationdialog(_:shouldpresent:actions:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
