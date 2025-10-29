---
title: dialogPreventsAppTermination(_:)
description: Whether the alert or confirmation dialog prevents the app from being quit/terminated by the system or app termination menu item.
source: https://developer.apple.com/documentation/swiftui/view/dialogpreventsapptermination(_:)
timestamp: 2025-10-29T00:12:18.864Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dialogPreventsAppTermination(_:)

**Available on:** macOS 15.4+

> Whether the alert or confirmation dialog prevents the app from being quit/terminated by the system or app termination menu item.

```swift
nonisolated func dialogPreventsAppTermination(_ prevents: Bool?) -> some View
```

## Discussion

SwiftUI uses the actions passed to the above dialogs to determine whether the dialog should block app termination by default when presented. If all of the following are satisfied, the dialog will not block app quit:

- There is only a single button and its role is not [destructive](/documentation/swiftui/buttonrole/destructive)
- The [dialogSeverity(_:)](/documentation/swiftui/view/dialogseverity(_:)) is not `DialogSeverity/critical``
- There are no [Text Field](/documentation/swiftui/textfield)s

Use this modifier after a `View/alert` or `View/confirmationDialog` to specify whether the dialog should prevent app termination. Pass `nil` to explicitly request the automatic behavior/for the inert version of this modifier.

```swift
struct ConfirmLogoutView: View {
  @State private var isConfirming = false

  var body: some View {
    Button("Logout") { isConfirming = true }
      .confirmationDialog(
        Text("Logout?"),
          isPresented: $isConfirming
        ) {
          Button("Yes") {
            // Handle logout action.
          }
        }
        .dialogPreventsAppTermination(false)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
