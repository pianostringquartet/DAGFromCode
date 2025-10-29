---
title: keyboard
description: The item is placed in the keyboard section.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/keyboard
timestamp: 2025-10-29T00:12:42.621Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# keyboard

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+

> The item is placed in the keyboard section.

```swift
static let keyboard: ToolbarItemPlacement
```

## Discussion

On iOS, keyboard items are above the software keyboard when present, or at the bottom of the screen when a hardware keyboard is attached.

On macOS, keyboard items will be placed inside the Touch Bar.

A `FocusedValue`can be used to adjust the content of the keyboard bar based on the currently focused view. In the example below, the keyboard bar gains additional buttons only when the appropriate `TextField` is focused.

```swift
enum Field {
    case suit
    case rank
}

struct KeyboardBarDemo : View {
    @FocusedValue(\.field) var field: Field?

    var body: some View {
        HStack {
            TextField("Suit", text: $suitText)
                .focusedValue(\.field, .suit)
            TextField("Rank", text: $rankText)
                .focusedValue(\.field, .rank)
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                if field == .suit {
                    Button("♣️", action: {})
                    Button("♥️", action: {})
                    Button("♠️", action: {})
                    Button("♦️", action: {})
                }
                DoneButton()
            }
        }
    }
}
```

## Getting explicit placement

- [topBarLeading](/documentation/swiftui/toolbaritemplacement/topbarleading)
- [topBarTrailing](/documentation/swiftui/toolbaritemplacement/topbartrailing)
- [bottomBar](/documentation/swiftui/toolbaritemplacement/bottombar)
- [bottomOrnament](/documentation/swiftui/toolbaritemplacement/bottomornament)
- [accessoryBar(id:)](/documentation/swiftui/toolbaritemplacement/accessorybar(id:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
