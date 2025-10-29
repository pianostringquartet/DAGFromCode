---
title: EventModifiers
description: A set of key modifiers that you can add to a gesture.
source: https://developer.apple.com/documentation/swiftui/eventmodifiers
timestamp: 2025-10-29T00:14:08.920Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EventModifiers

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A set of key modifiers that you can add to a gesture.

```swift
@frozen struct EventModifiers
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting modifier keys

- [all](/documentation/swiftui/eventmodifiers/all) All possible modifier keys.
- [capsLock](/documentation/swiftui/eventmodifiers/capslock) The Caps Lock key.
- [command](/documentation/swiftui/eventmodifiers/command) The Command key.
- [control](/documentation/swiftui/eventmodifiers/control) The Control key.
- [numericPad](/documentation/swiftui/eventmodifiers/numericpad) Any key on the numeric keypad.
- [option](/documentation/swiftui/eventmodifiers/option) The Option key.
- [shift](/documentation/swiftui/eventmodifiers/shift) The Shift key.

## Creating a set of options

- [init(rawValue:)](/documentation/swiftui/eventmodifiers/init(rawvalue:)) Creates a new set from a raw value.
- [rawValue](/documentation/swiftui/eventmodifiers/rawvalue) The raw value.

## Deprecated modifiers

- [function](/documentation/swiftui/eventmodifiers/function) The Function key.

## Creating keyboard shortcuts

- [keyboardShortcut(_:)](/documentation/swiftui/view/keyboardshortcut(_:))
- [keyboardShortcut(_:modifiers:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:))
- [keyboardShortcut(_:modifiers:localization:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:localization:))
- [keyboardShortcut](/documentation/swiftui/environmentvalues/keyboardshortcut)
- [KeyboardShortcut](/documentation/swiftui/keyboardshortcut)
- [KeyEquivalent](/documentation/swiftui/keyequivalent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
