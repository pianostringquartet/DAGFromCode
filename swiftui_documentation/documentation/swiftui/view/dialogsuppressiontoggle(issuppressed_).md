---
title: dialogSuppressionToggle(isSuppressed:)
description: Enables user suppression of dialogs and alerts presented within , with a default suppression message on macOS. Unused on other platforms.
source: https://developer.apple.com/documentation/swiftui/view/dialogsuppressiontoggle(issuppressed:)
timestamp: 2025-10-29T00:12:25.449Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dialogSuppressionToggle(isSuppressed:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Enables user suppression of dialogs and alerts presented within , with a default suppression message on macOS. Unused on other platforms.

```swift
nonisolated func dialogSuppressionToggle(isSuppressed: Binding<Bool>) -> some View
```

## Parameters

**isSuppressed**

Whether the suppression toggle is on or off in the dialog.



## Discussion

Applying dialog suppression adds a toggle to dialogs on macOS, which allows the user to request the alert not be displayed again. Typically whether a dialog is suppressed is stored in `AppStorage` and used to decide whether to present the dialog in the future.

The following example configures a `confirmationDialog` with a suppression toggle. The toggle’s state is stored in `AppStorage` and used to determine whether or not to show the dialog when the “Delete Items” button is pressed.

```swift
struct ConfirmEraseItems: View {
    @State private var isShowingDialog = false

    @AppStorage("suppressEraseItemAlert")
    private var suppressAlert = false

    var body: some View {
        Button("Delete Items") {
            if !suppressAlert {
                isShowingDialog = true
            } else {
                // Handle item deletion.
            }
        }
        .confirmationDialog(
            "Are you sure you want to erase these items?",
            isPresented: $isShowingDialog
        ) {
            Button("Erase", role: .destructive) {
                // Handle item deletion.
            }
            Button("Cancel", role: .cancel) {
                isShowingDialog = false
            }
        }
        .dialogSuppressionToggle(isSuppressed: $suppressAlert)
    }
}
```

## Configuring a dialog

- [dialogIcon(_:)](/documentation/swiftui/view/dialogicon(_:))
- [dialogIcon(_:)](/documentation/swiftui/scene/dialogicon(_:))
- [dialogSeverity(_:)](/documentation/swiftui/view/dialogseverity(_:))
- [dialogSeverity(_:)](/documentation/swiftui/scene/dialogseverity(_:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/scene/dialogsuppressiontoggle(issuppressed:))
- [dialogSuppressionToggle(_:isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(_:issuppressed:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
