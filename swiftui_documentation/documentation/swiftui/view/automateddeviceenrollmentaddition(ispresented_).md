---
title: automatedDeviceEnrollmentAddition(isPresented:)
description: Presents a modal view that enables users to add devices to their organization.
source: https://developer.apple.com/documentation/swiftui/view/automateddeviceenrollmentaddition(ispresented:)
timestamp: 2025-10-29T00:13:08.591Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# automatedDeviceEnrollmentAddition(isPresented:)

**Available on:** iOS 16.0+, iPadOS 16.0+

> Presents a modal view that enables users to add devices to their organization.

```swift
@MainActor @preconcurrency func automatedDeviceEnrollmentAddition(isPresented: Binding<Bool>) -> some View
```

## Parameters

**isPresented**

A binding to a Boolean value that determines whether to present the view.



## Return Value

The modal view that the system presents to the user.

## Discussion

Use this view modifier to present UI in your app for device administrators to add devices purchased outside of the official channel to their organization — Apple School Manager, Apple Business Manager, or Apple Business Essentials. The system requires sign in with a Managed Apple Account that includes device enrollment privileges.

The following code example shows one way to present this view to your users:

Example Usage:

```swift
import SwiftUI
import AutomatedDeviceEnrollment

struct ContentView: View {
    @State private var isAddingDevices: Bool = false

    var body: some View {
        Button("Add Devices to Automated Device Enrollment") {
            isAddingDevices = true
        }
        .automatedDeviceEnrollmentAddition(isPresented: $isAddingDevices)
        .onChange(of: isAddingDevices) {
            if !isAddingDevices {
                // Handle dismiss action
            }
        }
    }
}
```

## Working with managed devices

- [managedContentStyle(_:)](/documentation/swiftui/view/managedcontentstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
