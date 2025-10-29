---
title: simultaneousGesture(_:name:isEnabled:)
description: Attaches a gesture to the view to process simultaneously with gestures defined by the view.
source: https://developer.apple.com/documentation/swiftui/view/simultaneousgesture(_:name:isenabled:)
timestamp: 2025-10-29T00:12:34.049Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# simultaneousGesture(_:name:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Attaches a gesture to the view to process simultaneously with gestures defined by the view.

```swift
nonisolated func simultaneousGesture<T>(_ gesture: T, name: String, isEnabled: Bool = true) -> some View where T : Gesture
```

## Parameters

**gesture**

A gesture to attach to the view.



**name**

A string that identifies the gesture. In iOS, the name can be used to set up failure relationships between UIKit gesture recognizers and this gesture.



**isEnabled**

Whether the added gesture is enabled. The default value is `true`.



## Discussion

Use this method when you need to define and process  a view specific gesture simultaneously with the same priority as the view’s existing gestures. The example below defines a custom gesture that prints a message to the console and attaches it to the view’s [VStack](/documentation/swiftui/vstack). Inside the [VStack](/documentation/swiftui/vstack) is a red heart [Image](/documentation/swiftui/image) defines its own [Tap Gesture](/documentation/swiftui/tapgesture) handler that also prints a message to the console and a blue rectangle with no custom gesture handlers.

You can also use the `isEnabled` parameter to conditionally disable the gesture.

Tapping or clicking the “heart” image sends two messages to the console: one for the image’s tap gesture handler, and the other from a custom gesture handler attached to the enclosing vertical stack. Tapping or clicking on the blue rectangle results only in the single message to the console from the tap recognizer attached to the [VStack](/documentation/swiftui/vstack):

```swift
struct SimultaneousGestureExample: View {
    @State private var message = "Message"
    var isGestureEnabled: Bool
    let newGesture = TapGesture().onEnded {
        print("Gesture on VStack.")
    }

    var body: some View {
        VStack(spacing:25) {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 75, height: 75)
                .padding()
                .foregroundColor(.red)
                .onTapGesture {
                    print("Gesture on image.")
                }
            Rectangle()
                .fill(Color.blue)
        }
        .simultaneousGesture(
            newGesture, isEnabled: isGestureEnabled)
        .frame(width: 200, height: 200)
        .border(Color.purple)
    }
}
```

## Combining gestures

- [Composing SwiftUI gestures](/documentation/swiftui/composing-swiftui-gestures)
- [simultaneousGesture(_:including:)](/documentation/swiftui/view/simultaneousgesture(_:including:))
- [simultaneousGesture(_:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:isenabled:))
- [SequenceGesture](/documentation/swiftui/sequencegesture)
- [SimultaneousGesture](/documentation/swiftui/simultaneousgesture)
- [ExclusiveGesture](/documentation/swiftui/exclusivegesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
