---
title: simultaneousGesture(_:including:)
description: Attaches a gesture to the view to process simultaneously with gestures defined by the view.
source: https://developer.apple.com/documentation/swiftui/view/simultaneousgesture(_:including:)
timestamp: 2025-10-29T00:14:19.691Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# simultaneousGesture(_:including:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Attaches a gesture to the view to process simultaneously with gestures defined by the view.

```swift
nonisolated func simultaneousGesture<T>(_ gesture: T, including mask: GestureMask = .all) -> some View where T : Gesture
```

## Parameters

**gesture**

A gesture to attach to the view.



**mask**

A value that controls how adding this gesture to the view affects other gestures recognized by the view and its subviews. Defaults to [all](/documentation/swiftui/gesturemask/all).



## Discussion

Use this method when you need to define and process  a view specific gesture simultaneously with the same priority as the view’s existing gestures. The example below defines a custom gesture that prints a message to the console and attaches it to the view’s [VStack](/documentation/swiftui/vstack). Inside the [VStack](/documentation/swiftui/vstack) is a red heart [Image](/documentation/swiftui/image) defines its own [Tap Gesture](/documentation/swiftui/tapgesture) handler that also prints a message to the console and a blue rectangle with no custom gesture handlers.

Tapping or clicking the “heart” image sends two messages to the console: one for the image’s tap gesture handler, and the other from a custom gesture handler attached to the enclosing vertical stack. Tapping or clicking on the blue rectangle results only in the single message to the console from the tap recognizer attached to the [VStack](/documentation/swiftui/vstack):

```swift
struct SimultaneousGestureExample: View {
    @State private var message = "Message"
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
        .simultaneousGesture(newGesture)
        .frame(width: 200, height: 200)
        .border(Color.purple)
    }
}
```

## Combining gestures

- [Composing SwiftUI gestures](/documentation/swiftui/composing-swiftui-gestures)
- [simultaneousGesture(_:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:isenabled:))
- [simultaneousGesture(_:name:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:name:isenabled:))
- [SequenceGesture](/documentation/swiftui/sequencegesture)
- [SimultaneousGesture](/documentation/swiftui/simultaneousgesture)
- [ExclusiveGesture](/documentation/swiftui/exclusivegesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
