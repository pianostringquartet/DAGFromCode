---
title: onPencilSqueeze(perform:)
description: Adds an action to perform when the user squeezes their Apple Pencil.
source: https://developer.apple.com/documentation/swiftui/view/onpencilsqueeze(perform:)
timestamp: 2025-10-29T00:14:04.630Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onPencilSqueeze(perform:)

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> Adds an action to perform when the user squeezes their Apple Pencil.

```swift
nonisolated func onPencilSqueeze(perform action: @escaping (PencilSqueezeGesturePhase) -> Void) -> some View
```

## Parameters

**action**

The action to perform when the user squeezes their Apple Pencil.



## Return Value

A view that performs `action` when the user squeezes their Apple Pencil.

## Discussion

You should respect people’s setting for the squeeze gesture by reading the [preferred Pencil Squeeze Action](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction) environment value, if the setting makes sense in your app. If it doesn’t, consider giving people a way to specify custom behavior in your app instead.

In the example below, completing an Apple Pencil squeeze gesture will…

- do nothing if this is what the user selected in the Settings app,
- switch the tool to ”Lasso” if this is the action they have configured in the app,
- spill the ink if this is the action they have configured in the app,
- present a custom contextual palette if they haven’t configured a custom action in the app and this is what they selected in the Settings app.

```swift
enum MyPencilAction: String {
    case spillInk
    ...
}

@Environment(\.preferredPencilSqueezeAction) private var preferredAction
@AppStorage("customPencilSqueezeAction") private var customAction: MyPencilAction?

@State private var contextualPaletteAnchor: PopoverAttachmentAnchor?
@State private var contextualPalettePresented = false

var body: some View {
    MyDrawingCanvas()
        .onPencilSqueeze { phase in
            guard preferredAction != .ignore else {
                // Skip if this is what the user prefers.
                return
            }
            if let customAction {
                // If a custom action is configured, respect it.
                if customAction == .spillInk {
                    switch phase {
                        // Spill the ink while the user is squeezing their Apple Pencil.
                    }
                }
            } else if preferredAction == .showContextualPalette, case let .ended(value) = phase {
                // Present a custom contextual palette if the user prefers it.
                contextualPaletteAnchor = value.hoverPose?.anchor.map { .point($0) }
                contextualPalettePresented = true
            }
        }
        .popover(
            isPresented: $contextualPalettePresented,
            attachmentAnchor: contextualPaletteAnchor ?? .point(.center)
        ) {
            MyContextualPalette()
        }
```

> [!NOTE]
> If multiple views with the `onPencilSqueeze` view modifier are visible, all their action closures will be performed when the user squeezes their Apple Pencil.

## Recognizing Apple Pencil gestures

- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:))
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction)
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction)
- [PencilPreferredAction](/documentation/swiftui/pencilpreferredaction)
- [PencilDoubleTapGestureValue](/documentation/swiftui/pencildoubletapgesturevalue)
- [PencilSqueezeGestureValue](/documentation/swiftui/pencilsqueezegesturevalue)
- [PencilSqueezeGesturePhase](/documentation/swiftui/pencilsqueezegesturephase)
- [PencilHoverPose](/documentation/swiftui/pencilhoverpose)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
