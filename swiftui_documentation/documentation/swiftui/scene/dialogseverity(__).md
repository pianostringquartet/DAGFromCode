---
title: dialogSeverity(_:)
description: Sets the severity for alerts.
source: https://developer.apple.com/documentation/swiftui/scene/dialogseverity(_:)
timestamp: 2025-10-29T00:11:54.845Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# dialogSeverity(_:)

**Available on:** macOS 15.0+

> Sets the severity for alerts.

```swift
nonisolated func dialogSeverity(_ severity: DialogSeverity) -> some Scene
```

## Parameters

**severity**

The severity to use for alerts.



## Discussion

The following example configures an alert for erasing some number of items. Since this operation is destructive and non-recoverable, a `.critical` severity is used.

```swift
struct MyApp: App {
    @State private var isShowingDialog = false

    var body: some Scene {
        Window(...) {
            Button("Delete items") {
                isShowingDialog = true
            }
        }

        AlertScene(
            "Are you sure you want to erase these items?",
            isPresented: $isShowingDialog
        ) {
            Button("Erase", role: .destructive) {
                // Handle item deletion.
            }
            Button("Cancel", role: .cancel) {
                // Handle cancellation
            }
        }
        .dialogSeverity(.critical)
    }
}
```

## Configuring a dialog

- [dialogIcon(_:)](/documentation/swiftui/view/dialogicon(_:))
- [dialogIcon(_:)](/documentation/swiftui/scene/dialogicon(_:))
- [dialogSeverity(_:)](/documentation/swiftui/view/dialogseverity(_:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(issuppressed:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/scene/dialogsuppressiontoggle(issuppressed:))
- [dialogSuppressionToggle(_:isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(_:issuppressed:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
