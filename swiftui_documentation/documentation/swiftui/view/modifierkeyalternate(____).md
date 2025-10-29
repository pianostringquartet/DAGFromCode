---
title: modifierKeyAlternate(_:_:)
description: Builds a view to use in place of the modified view when the user presses the modifier key(s) indicated by the given set.
source: https://developer.apple.com/documentation/swiftui/view/modifierkeyalternate(_:_:)
timestamp: 2025-10-29T00:14:51.840Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# modifierKeyAlternate(_:_:)

**Available on:** macOS 15.0+

> Builds a view to use in place of the modified view when the user presses the modifier key(s) indicated by the given set.

```swift
nonisolated func modifierKeyAlternate<V>(_ modifiers: EventModifiers, @ViewBuilder _ alternate: () -> V) -> some View where V : View
```

## Parameters

**modifiers**

The modifier keys to associate with the alternate view. While all these keys are held, SwiftUI will replace the modified view with this alternate one.



**alternate**

A view builder for constructing the modified view’s alternate when matching modifier keys are pressed.



## Return Value

A modified view with an alternate view to use while specific modifier keys are held down.

## Discussion

```swift
Button("Go Forward", ...)
    .modifierKeyAlternate(.option) {
        Button("Go to Page…", ...)
    }
```

In menu style contexts, modifier key alternates become alternate menu items. If the modified view has a keyboard shortcut, it will be used as the basis for the alternate view’s shortcut.

```swift
// File > Save
Button("Save", ...) // ⌘ S
    .keyboardShortcut("s")
    .modifierKeyAlternate(.option) {
        Button("Save All", ...) // ⌥⌘ S
    }
```

To use a different keyboard shortcut for the alternate view, add one explicitly in the view builder. SwiftUI will use your explicit shortcut instead of its own inferred one.

```swift
Button("Go Forward", ...) // ⌘ →
    .keyboardShortcut(.rightArrow)
    .modifierKeyAlternate(.control) {
        Button("Go To Page…", ...) // ⌃ →
            .keyboardShortcut(.rightArrow, modifiers: .control)
    }
```

A view can have multiple modifier key alternates, provided their associated modifier keys are different. When multiple alternates match the currently-held keys, the most specific match prevails.

```swift
Button("Save", ...) // ⌘ S
    .keyboardShortcut("s")
    .modifierKeyAlternate(.option) {
        Button("Save All", ...) // ⌥⌘ S
    }
    .modifierKeyAlternate([.option, .shift]) {
        Button("Save a Copy…", ...) // ⇧⌥⌘ S
    }
```

## Responding to modifier keys

- [onModifierKeysChanged(mask:initial:_:)](/documentation/swiftui/view/onmodifierkeyschanged(mask:initial:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
