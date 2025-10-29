---
title: Alert
description: A representation of an alert presentation.
source: https://developer.apple.com/documentation/swiftui/alert
timestamp: 2025-10-29T00:14:12.124Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Alert

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A representation of an alert presentation.

```swift
struct Alert
```

## Overview

Use an alert when you want the user to act in response to the state of the app or system. If you want the user to make a choice in response to their action, use an [Action Sheet](/documentation/swiftui/actionsheet) instead.

You show an alert by using the [alert(isPresented:content:)](/documentation/swiftui/view/alert(ispresented:content:)) view modifier to create an alert, which then appears whenever the bound `isPresented` value is `true`. The `content` closure you provide to this modifer produces a customized instance of the `Alert` type.

In the following example, a button presents a simple alert when tapped, by updating a local `showAlert` property that binds to the alert.

```swift
@State private var showAlert = false
var body: some View {
    Button("Tap to show alert") {
        showAlert = true
    }
    .alert(isPresented: $showAlert) {
        Alert(
            title: Text("Current Location Not Available"),
            message: Text("Your current location can’t be " +
                            "determined at this time.")
        )
    }
}
```



To customize the alert, add instances of the [Button](/documentation/swiftui/alert/button) type, which provides standardized buttons for common tasks like canceling and performing destructive actions. The following example uses two buttons: a default button labeled “Try Again” that calls a `saveWorkoutData` method, and a “Delete” button that calls a destructive `deleteWorkoutData` method.

```swift
@State private var showAlert = false
var body: some View {
    Button("Tap to show alert") {
        showAlert = true
    }
    .alert(isPresented: $showAlert) {
        Alert(
            title: Text("Unable to Save Workout Data"),
            message: Text("The connection to the server was lost."),
            primaryButton: .default(
                Text("Try Again"),
                action: saveWorkoutData
            ),
            secondaryButton: .destructive(
                Text("Delete"),
                action: deleteWorkoutData
            )
        )
    }
}
```



The alert handles its own dismissal when the user taps one of the buttons in the alert, by setting the bound `isPresented` value back to `false`.

## Creating an alert

- [init(title:message:dismissButton:)](/documentation/swiftui/alert/init(title:message:dismissbutton:)) Creates an alert with one button.
- [init(title:message:primaryButton:secondaryButton:)](/documentation/swiftui/alert/init(title:message:primarybutton:secondarybutton:)) Creates an alert with two buttons.
- [sideBySideButtons(title:message:primaryButton:secondaryButton:)](/documentation/swiftui/alert/sidebysidebuttons(title:message:primarybutton:secondarybutton:)) Creates a side by side button alert.

## Specifying the button type

- [Alert.Button](/documentation/swiftui/alert/button) A button that represents an operation of an alert presentation.

## Deprecated modal presentations

- [ActionSheet](/documentation/swiftui/actionsheet)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
