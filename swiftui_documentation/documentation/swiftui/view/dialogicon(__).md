---
title: dialogIcon(_:)
description: Configures the icon used by dialogs within this view.
source: https://developer.apple.com/documentation/swiftui/view/dialogicon(_:)
timestamp: 2025-10-29T00:10:16.317Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dialogIcon(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, tvOS 17.0+, watchOS 10.0+

> Configures the icon used by dialogs within this view.

```swift
nonisolated func dialogIcon(_ icon: Image?) -> some View
```

## Parameters

**icon**

The custom icon to use for confirmation dialogs and alerts. Passing `nil` will use the default app icon.



## Discussion

On macOS, this icon replaces the default icon of the app.

On watchOS, this icon will be shown in any dialogs presented.

This modifier has no effect on other platforms.

The following example configures a `confirmationDialog` with a custom image.

```swift
Button("Delete items") {
    isShowingDialog = true
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
.dialogIcon(Image(...))
```

## Configuring a dialog

- [dialogIcon(_:)](/documentation/swiftui/scene/dialogicon(_:))
- [dialogSeverity(_:)](/documentation/swiftui/view/dialogseverity(_:))
- [dialogSeverity(_:)](/documentation/swiftui/scene/dialogseverity(_:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(issuppressed:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/scene/dialogsuppressiontoggle(issuppressed:))
- [dialogSuppressionToggle(_:isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(_:issuppressed:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
