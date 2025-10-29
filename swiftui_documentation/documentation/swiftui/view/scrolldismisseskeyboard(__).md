---
title: scrollDismissesKeyboard(_:)
description: Configures the behavior in which scrollable content interacts with the software keyboard.
source: https://developer.apple.com/documentation/swiftui/view/scrolldismisseskeyboard(_:)
timestamp: 2025-10-29T00:14:59.914Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollDismissesKeyboard(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, watchOS 9.0+

> Configures the behavior in which scrollable content interacts with the software keyboard.

```swift
nonisolated func scrollDismissesKeyboard(_ mode: ScrollDismissesKeyboardMode) -> some View
```

## Parameters

**mode**

The keyboard dismissal mode that scrollable content uses.



## Return Value

A view that uses the specified keyboard dismissal mode.

## Discussion

You use this modifier to customize how scrollable content interacts with the software keyboard. For example, you can specify a value of [immediately](/documentation/swiftui/scrolldismisseskeyboardmode/immediately) to indicate that you would like scrollable content to immediately dismiss the keyboard if present when a scroll drag gesture begins.

```swift
@State private var text = ""

ScrollView {
    TextField("Prompt", text: $text)
    ForEach(0 ..< 50) { index in
        Text("\(index)")
            .padding()
    }
}
.scrollDismissesKeyboard(.immediately)
```

You can also use this modifier to customize the keyboard dismissal behavior for other kinds of scrollable views, like a [List](/documentation/swiftui/list) or a [Text Editor](/documentation/swiftui/texteditor).

By default, a [Text Editor](/documentation/swiftui/texteditor) is interactive while other kinds of scrollable content always dismiss the keyboard on a scroll when linked against iOS 16 or later. Pass a value of [never](/documentation/swiftui/scrolldismisseskeyboardmode/never) to indicate that scrollable content should never automatically dismiss the keyboard.

## Interacting with a software keyboard

- [scrollDismissesKeyboardMode](/documentation/swiftui/environmentvalues/scrolldismisseskeyboardmode)
- [ScrollDismissesKeyboardMode](/documentation/swiftui/scrolldismisseskeyboardmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
