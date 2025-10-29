---
title: onTapGesture(count:perform:)
description: Adds an action to perform when this view recognizes a tap gesture.
source: https://developer.apple.com/documentation/swiftui/view/ontapgesture(count:perform:)
timestamp: 2025-10-29T00:14:21.024Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onTapGesture(count:perform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 16.0+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform when this view recognizes a tap gesture.

```swift
nonisolated func onTapGesture(count: Int = 1, perform action: @escaping () -> Void) -> some View
```

## Parameters

**count**

The number of taps or clicks required to trigger the action closure provided in `action`. Defaults to `1`.



**action**

The action to perform.



## Discussion

Use this method to perform the specified `action` when the user clicks or taps on the view or container `count` times.

> [!NOTE]
> If you create a control that’s functionally equivalent to a [Button](/documentation/swiftui/button), use [Button Style](/documentation/swiftui/buttonstyle) to create a customized button instead.

In the example below, the color of the heart images changes to a random color from the `colors` array whenever the user clicks or taps on the view twice:

```swift
struct TapGestureExample: View {
    let colors: [Color] = [.gray, .red, .orange, .yellow,
                           .green, .blue, .purple, .pink]
    @State private var fgColor: Color = .gray

    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .frame(width: 200, height: 200)
            .foregroundColor(fgColor)
            .onTapGesture(count: 2) {
                fgColor = colors.randomElement()!
            }
    }
}
```



## Recognizing tap gestures

- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:))
- [TapGesture](/documentation/swiftui/tapgesture)
- [SpatialTapGesture](/documentation/swiftui/spatialtapgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
