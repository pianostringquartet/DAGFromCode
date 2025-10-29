---
title: alert(isPresented:error:actions:message:)
description: Presents an alert with a message when an error is present.
source: https://developer.apple.com/documentation/swiftui/view/alert(ispresented:error:actions:message:)
timestamp: 2025-10-29T00:10:51.090Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# alert(isPresented:error:actions:message:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Presents an alert with a message when an error is present.

```swift
nonisolated func alert<E, A, M>(isPresented: Binding<Bool>, error: E?, @ViewBuilder actions: (E) -> A, @ViewBuilder message: (E) -> M) -> some View where E : LocalizedError, A : View, M : View
```

## Parameters

**isPresented**

A binding to a Boolean value that determines whether to present the alert. When the user presses or taps one of the alert’s actions, the system sets this value to `false` and dismisses.



**error**

An optional localized Error that is used to generate the alert’s title.  The system passes the contents to the modifier’s closures. You use this data to populate the fields of an alert that you create that the system displays to the user.



**actions**

A [View Builder](/documentation/swiftui/viewbuilder) returning the alert’s actions.



**message**

A view builder returning the message for the alert given the current error.



## Discussion

In the example below, a form conditionally presents an alert depending upon the value of an error. When the error value isn’t `nil`, the system presents an alert with an “OK” action.

The title of the alert is inferred from the error’s `errorDescription`.

```swift
struct TicketPurchase: View {
    @State private var error: TicketPurchaseError? = nil
    @State private var showAlert = false

    var body: some View {
        TicketForm(showAlert: $showAlert, error: $error)
            .alert(isPresented: $showAlert, error: error) { _ in
                Button("OK") {
                    // Handle acknowledgement.
                }
            } message: { error in
                Text(error.recoverySuggestion ?? "Try again later.")
            }
    }
}
```

All actions in an alert dismiss the alert after the action runs. The default button is shown with greater prominence.  You can influence the default button by assigning it the [default Action](/documentation/swiftui/keyboardshortcut/defaultaction) keyboard shortcut.

The system may reorder the buttons based on their role and prominence.

If no actions are present, the system includes a standard “OK” action. No default cancel action is provided. If you want to show a cancel action, use a button with a role of [cancel](/documentation/swiftui/buttonrole/cancel).

On iOS, tvOS, and watchOS, alerts only support controls with labels that are [Text](/documentation/swiftui/text). Passing any other type of view results in the content being omitted.

This modifier creates a [Text](/documentation/swiftui/text) view for the title on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Presenting an alert

- [AlertScene](/documentation/swiftui/alertscene)
- [alert(_:isPresented:actions:)](/documentation/swiftui/view/alert(_:ispresented:actions:))
- [alert(_:isPresented:presenting:actions:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:))
- [alert(isPresented:error:actions:)](/documentation/swiftui/view/alert(ispresented:error:actions:))
- [alert(_:isPresented:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:actions:message:))
- [alert(_:isPresented:presenting:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:message:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
