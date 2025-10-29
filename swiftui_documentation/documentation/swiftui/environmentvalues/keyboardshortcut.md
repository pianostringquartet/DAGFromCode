---
title: keyboardShortcut
description: The keyboard shortcut that buttons in this environment will be triggered with.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/keyboardshortcut
timestamp: 2025-10-29T00:13:52.690Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# keyboardShortcut

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> The keyboard shortcut that buttons in this environment will be triggered with.

```swift
var keyboardShortcut: KeyboardShortcut? { get }
```

## Discussion

This is particularly useful in button styles when a button’s appearance depends on the shortcut associated with it. On macOS, for example, when a button is bound to the Return key, it is typically drawn with a special emphasis. This happens automatically when using the built-in button styles, and can be implemented manually in custom styles using this environment key:

```swift
private struct MyButtonStyle: ButtonStyle {
    @Environment(\.keyboardShortcut)
    private var shortcut: KeyboardShortcut?

    func makeBody(configuration: Configuration) -> some View {
        let labelFont = Font.body
            .weight(shortcut == .defaultAction ? .bold : .regular)
        configuration.label
            .font(labelFont)
    }
}
```

If no keyboard shortcut has been applied to the view or its ancestor, then the environment value will be `nil`.

## Creating keyboard shortcuts

- [keyboardShortcut(_:)](/documentation/swiftui/view/keyboardshortcut(_:))
- [keyboardShortcut(_:modifiers:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:))
- [keyboardShortcut(_:modifiers:localization:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:localization:))
- [KeyboardShortcut](/documentation/swiftui/keyboardshortcut)
- [KeyEquivalent](/documentation/swiftui/keyequivalent)
- [EventModifiers](/documentation/swiftui/eventmodifiers)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
