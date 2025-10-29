---
title: pointerStyle(_:)
description: Sets the pointer style to display when the pointer is over the view.
source: https://developer.apple.com/documentation/swiftui/view/pointerstyle(_:)
timestamp: 2025-10-29T00:09:56.816Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# pointerStyle(_:)

**Available on:** macOS 15.0+, visionOS 2.0+

> Sets the pointer style to display when the pointer is over the view.

```swift
nonisolated func pointerStyle(_ style: PointerStyle?) -> some View
```

## Parameters

**style**

The pointer style to use.



## Return Value

A view that changes the style of the pointer when hovered.

## Discussion

Refer to [Pointer Style](/documentation/swiftui/pointerstyle) for a list of available pointer styles.

For guidance on choosing an appropriate pointer style, refer to [pointing](/design/Human-Interface-Guidelines/pointing-devices) in the Human Interface Guidelines.

In this example, the pointer style indicates rectangular selection is possible while the Option modifier key is pressed:

```swift
enum ToolMode {
    // ...
    case selection
}

struct ImageEditorView: View {
    @State private var toolMode?

    var body: some View {
        ImageCanvasView()
            .pointerStyle(
                toolMode == .selection ? .rectSelection : nil)
            .onModifierKeysChanged { _, modifierKeys in
                if modifierKeys.contains(.option) {
                    toolMode = .selection
                } else {
                    toolMode = nil
                }
            }
    }
}
```

## Modifying pointer appearance

- [PointerStyle](/documentation/swiftui/pointerstyle)
- [pointerVisibility(_:)](/documentation/swiftui/view/pointervisibility(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
