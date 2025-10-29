---
title: dismissalConfirmationDialog(_:shouldPresent:actions:message:)
description: Presents a confirmation dialog when a dismiss action has been triggered.
source: https://developer.apple.com/documentation/swiftui/view/dismissalconfirmationdialog(_:shouldpresent:actions:message:)
timestamp: 2025-10-29T00:10:02.937Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dismissalConfirmationDialog(_:shouldPresent:actions:message:)

**Available on:** macOS 15.0+

> Presents a confirmation dialog when a dismiss action has been triggered.

```swift
nonisolated func dismissalConfirmationDialog<A, M>(_ title: Text, shouldPresent: Bool, @ViewBuilder actions: () -> A, @ViewBuilder message: () -> M) -> some View where A : View, M : View
```

## Parameters

**title**

The title of the dialog.



**shouldPresent**

A Boolean value that determines whether to present the dialog upon dismissal.



**actions**

A view builder returning the dialog’s actions.



**message**

A view builder returning the message for the dialog.



## Discussion

On macOS, the dialog will be presented when attempting to dismiss the window for this view.

For example, you could present a dialog asking to persist unsaved changes:

struct ComposeMessage: View { @State private var message = Message()

```swift
var body: some View {
    MessageEditor(message: $message)
        .dismissalConfirmationDialog(
            "Save This Message As Draft?",
            shouldPresent: message.hasUnsavedChanges
        ) {
            Button("Save") {
                message.save()
            }
            Button("Don't Save", role: .destructive) {
                message.discard()
            }
        } message: {
            Text(
                """
                This message has not been sent and contains\
                unsaved changes.
                """)
        }
```

}

All actions in the dialog will dismiss the dialog after the action runs. The default button will be shown with greater prominence. You can influence the default button by assigning it the [default Action](/documentation/swiftui/keyboardshortcut/defaultaction) keyboard shortcut.

The system may reorder the buttons based on their role and prominence.

Dismissal dialogs include a standard cancellation action by default. If you provide a button with a role of [cancel](/documentation/swiftui/buttonrole/cancel), that button takes the place of the default cancellation action.

The cancellation action will always prevent the dismissal, while other actions will allow the dismiss to proceed.

## Showing a confirmation dialog with a message

- [confirmationDialog(_:isPresented:titleVisibility:actions:message:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:actions:message:))
- [confirmationDialog(_:isPresented:titleVisibility:presenting:actions:message:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:message:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
