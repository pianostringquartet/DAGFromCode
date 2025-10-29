---
title: alert(isPresented:content:)
description: Presents an alert to the user.
source: https://developer.apple.com/documentation/swiftui/view/alert(ispresented:content:)
timestamp: 2025-10-29T00:09:28.812Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# alert(isPresented:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Presents an alert to the user.

```swift
nonisolated func alert(isPresented: Binding<Bool>, content: () -> Alert) -> some View
```

## Parameters

**isPresented**

A binding to a Boolean value that determines whether to present the alert that you create in the modifier’s `content` closure. When the user presses or taps OK the system sets `isPresented` to `false` which dismisses the alert.



**content**

A closure returning the alert to present.



## Discussion

Use this method when you need to show an alert to the user. The example below displays an alert that is shown when the user toggles a Boolean value that controls the presentation of the alert:

```swift
struct OrderCompleteAlert: View {
    @State private var isPresented = false
    var body: some View {
        Button("Show Alert", action: {
            isPresented = true
        })
        .alert(isPresented: $isPresented) {
            Alert(title: Text("Order Complete"),
                  message: Text("Thank you for shopping with us."),
                  dismissButton: .default(Text("OK")))
        }
    }
}
```



## View presentation modifiers

- [actionSheet(isPresented:content:)](/documentation/swiftui/view/actionsheet(ispresented:content:))
- [actionSheet(item:content:)](/documentation/swiftui/view/actionsheet(item:content:))
- [alert(item:content:)](/documentation/swiftui/view/alert(item:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
