---
title: AccessibilityFocusState
description: A property wrapper type that can read and write a value that SwiftUI updates as the focus of any active accessibility technology, such as VoiceOver, changes.
source: https://developer.apple.com/documentation/swiftui/accessibilityfocusstate
timestamp: 2025-10-29T00:14:11.822Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessibilityFocusState

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A property wrapper type that can read and write a value that SwiftUI updates as the focus of any active accessibility technology, such as VoiceOver, changes.

```swift
@propertyWrapper @frozen struct AccessibilityFocusState<Value> where Value : Hashable
```

## Overview

Use this capability to request that VoiceOver or other accessibility technologies programmatically focus on a specific element, or to determine whether VoiceOver or other accessibility technologies are focused on particular elements. Use [accessibilityFocused(_:equals:)](/documentation/swiftui/view/accessibilityfocused(_:equals:)) or [accessibilityFocused(_:)](/documentation/swiftui/view/accessibilityfocused(_:)) in conjunction with this property wrapper to identify accessibility elements for which you want to get or set accessibility focus. When accessibility focus enters the modified accessibility element, the framework updates the wrapped value of this property to match a given prototype value. When accessibility focus leaves, SwiftUI resets the wrapped value of an optional property to `nil` or the wrapped value of a Boolean property to `false`. Setting the property’s value programmatically has the reverse effect, causing accessibility focus to move to whichever accessibility element is associated with the updated value.

In the example below, when `notification` changes, and its  `isPriority` property is `true`, the accessibility focus moves to the notification `Text` element above the rest of the view’s content:

```swift
struct CustomNotification: Equatable {
    var text: String
    var isPriority: Bool
}

struct ContentView: View {
    @Binding var notification: CustomNotification?
    @AccessibilityFocusState var isNotificationFocused: Bool

    var body: some View {
        VStack {
            if let notification = self.notification {
                Text(notification.text)
                    .accessibilityFocused($isNotificationFocused)
            }
            Text("The main content for this view.")
        }
        .onChange(of: notification) { notification in
            if (notification?.isPriority == true)  {
                isNotificationFocused = true
            }
        }

    }
}
```

To allow for cases where accessibility focus is completely absent from the tree of accessibility elements, or accessibility technologies are not active, the wrapped value must be either optional or Boolean.

Some initializers of `AccessibilityFocusState` also allow specifying accessibility technologies, determining to which types of accessibility focus this binding applies. If you specify no accessibility technologies, SwiftUI uses an aggregate of any and all active accessibility technologies.

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a focus state

- [init()](/documentation/swiftui/accessibilityfocusstate/init()) Creates a new accessibility focus state for a Boolean value.
- [init(for:)](/documentation/swiftui/accessibilityfocusstate/init(for:)) Creates a new accessibility focus state for a Boolean value, using the accessibility technologies you specify.

## Getting the state

- [projectedValue](/documentation/swiftui/accessibilityfocusstate/projectedvalue) A projection of the state value that can be used to establish bindings between view content and accessibility focus placement.
- [wrappedValue](/documentation/swiftui/accessibilityfocusstate/wrappedvalue) The current state value, taking into account whatever bindings might be in effect due to the current location of focus.
- [AccessibilityFocusState.Binding](/documentation/swiftui/accessibilityfocusstate/binding)

## Controlling focus

- [accessibilityFocused(_:)](/documentation/swiftui/view/accessibilityfocused(_:))
- [accessibilityFocused(_:equals:)](/documentation/swiftui/view/accessibilityfocused(_:equals:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
