---
title: gesture(_:isEnabled:)
description: Attaches a gesture to the view with a lower precedence than gestures defined by the view.
source: https://developer.apple.com/documentation/swiftui/view/gesture(_:isenabled:)
timestamp: 2025-10-29T00:09:54.605Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# gesture(_:isEnabled:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Attaches a gesture to the view with a lower precedence than gestures defined by the view.

```swift
nonisolated func gesture<T>(_ gesture: T, isEnabled: Bool) -> some View where T : Gesture
```

## Parameters

**gesture**

A gesture to attach to the view.



**isEnabled**

Whether the added gesture is enabled.



## Discussion

Use this method when you need to attach a gesture to a view. The example below defines a custom gesture that prints a message to the console and attaches it to the view’s [VStack](/documentation/swiftui/vstack). Inside the [VStack](/documentation/swiftui/vstack) a red heart [Image](/documentation/swiftui/image) defines its own [Tap Gesture](/documentation/swiftui/tapgesture) handler that also prints a message to the console, and blue rectangle with no custom gesture handlers. Tapping or clicking the image prints a message to the console from the tap gesture handler on the image, while tapping or clicking  the rectangle inside the [VStack](/documentation/swiftui/vstack) prints a message in the console from the enclosing vertical stack gesture handler.

You can also use the `isEnabled` parameter to conditionally disable the gesture.

```swift
struct GestureExample: View {
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
        .gesture(newGesture, isEnabled: isGestureEnabled)
        .frame(width: 200, height: 200)
        .border(Color.purple)
    }
}
```

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [DragGesture](/documentation/swiftui/draggesture)
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)
- [GestureMask](/documentation/swiftui/gesturemask)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
