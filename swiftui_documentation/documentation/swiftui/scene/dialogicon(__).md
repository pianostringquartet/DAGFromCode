---
title: dialogIcon(_:)
description: Configures the icon used by alerts.
source: https://developer.apple.com/documentation/swiftui/scene/dialogicon(_:)
timestamp: 2025-10-29T00:11:21.408Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# dialogIcon(_:)

**Available on:** macOS 15.0+

> Configures the icon used by alerts.

```swift
nonisolated func dialogIcon(_ icon: Image?) -> some Scene
```

## Parameters

**icon**

The custom icon to use for the alert. Passing `nil` will use the default app icon.



## Discussion

In macOS, this icon replaces the default icon of the app.

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
        .dialogIcon(Image(Trash.png))
    }
}
```

## Configuring a dialog

- [dialogIcon(_:)](/documentation/swiftui/view/dialogicon(_:))
- [dialogSeverity(_:)](/documentation/swiftui/view/dialogseverity(_:))
- [dialogSeverity(_:)](/documentation/swiftui/scene/dialogseverity(_:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(issuppressed:))
- [dialogSuppressionToggle(isSuppressed:)](/documentation/swiftui/scene/dialogsuppressiontoggle(issuppressed:))
- [dialogSuppressionToggle(_:isSuppressed:)](/documentation/swiftui/view/dialogsuppressiontoggle(_:issuppressed:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
