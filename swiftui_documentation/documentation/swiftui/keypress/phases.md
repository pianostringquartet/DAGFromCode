---
title: KeyPress.Phases
description: Options for matching different phases of a key-press event.
source: https://developer.apple.com/documentation/swiftui/keypress/phases
timestamp: 2025-10-29T00:11:29.809Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keypress](/documentation/swiftui/keypress)

**Structure**

# KeyPress.Phases

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Options for matching different phases of a key-press event.

```swift
struct Phases
```

## Conforms To

- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting the phases

- [down](/documentation/swiftui/keypress/phases/down) The user pressed down on a key.
- [up](/documentation/swiftui/keypress/phases/up) The user released a key.
- [repeat](/documentation/swiftui/keypress/phases/repeat) The user held a key down to issue a sequence of repeating events.
- [all](/documentation/swiftui/keypress/phases/all) A value that matches all key press phases.

## Getting the phase of the keypress

- [phase](/documentation/swiftui/keypress/phase)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
