---
title: highPriorityGesture(_:name:isEnabled:)
description: Attaches a gesture to the view with a higher precedence than gestures defined by the view.
source: https://developer.apple.com/documentation/swiftui/view/highprioritygesture(_:name:isenabled:)
timestamp: 2025-10-29T00:11:27.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# highPriorityGesture(_:name:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Attaches a gesture to the view with a higher precedence than gestures defined by the view.

```swift
nonisolated func highPriorityGesture<T>(_ gesture: T, name: String, isEnabled: Bool = true) -> some View where T : Gesture
```

## Parameters

**gesture**

A gesture to attach to the view.



**name**

A string that identifies the gesture. In iOS, the name can be used to set up failure relationships between UIKit gesture recognizers and this gesture.



**isEnabled**

Whether the added gesture is enabled. The default value is `true`.



## Discussion

Use this method when you need to define a high priority gesture to take precedence over the view’s existing gestures. The example below defines a custom gesture that prints a message to the console and attaches it to the view’s [VStack](/documentation/swiftui/vstack). Inside the [VStack](/documentation/swiftui/vstack) a red heart [Image](/documentation/swiftui/image) defines its own [Tap Gesture](/documentation/swiftui/tapgesture) handler that also prints a message to the console, and a blue rectangle with no custom gesture handlers. Tapping or clicking any of the views results in a console message from the high priority gesture attached to the enclosing [VStack](/documentation/swiftui/vstack).

You can also use the `isEnabled` parameter to conditionally disable the gesture.

```swift
struct HighPriorityGestureExample: View {
    @State private var message = "Message"
    var isGestureEnabled: Bool
    let newGesture = TapGesture().onEnded {
        print("Tap on VStack.")
    }

    var body: some View {
        VStack(spacing:25) {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 75, height: 75)
                .padding()
                .foregroundColor(.red)
                .onTapGesture {
                    print("Tap on image.")
                }
            Rectangle()
                .fill(Color.blue)
        }
        .highPriorityGesture(
            newGesture, isEnabled: isGestureEnabled)
        .frame(width: 200, height: 200)
        .border(Color.purple)
    }
}
```

## Defining custom gestures

- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:))
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:))
- [handGestureShortcut(_:isEnabled:)](/documentation/swiftui/view/handgestureshortcut(_:isenabled:))
- [defersSystemGestures(on:)](/documentation/swiftui/view/deferssystemgestures(on:))
- [Gesture](/documentation/swiftui/gesture)
- [AnyGesture](/documentation/swiftui/anygesture)
- [HandActivationBehavior](/documentation/swiftui/handactivationbehavior)
- [HandGestureShortcut](/documentation/swiftui/handgestureshortcut)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
