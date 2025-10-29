---
title: FocusInteractions
description: Values describe different focus interactions that a view can support.
source: https://developer.apple.com/documentation/swiftui/focusinteractions
timestamp: 2025-10-29T00:15:24.913Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FocusInteractions

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Values describe different focus interactions that a view can support.

```swift
struct FocusInteractions
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Creating the interaction types

- [automatic](/documentation/swiftui/focusinteractions/automatic) The view supports whatever focus-driven interactions are commonly expected for interactive content on the current platform.
- [activate](/documentation/swiftui/focusinteractions/activate) The view has a primary action that can be activated via focus gestures.
- [edit](/documentation/swiftui/focusinteractions/edit) The view captures input from non-spatial sources like a keyboard or Digital Crown.

## Indicating that a view can receive focus

- [focusable(_:)](/documentation/swiftui/view/focusable(_:))
- [focusable(_:interactions:)](/documentation/swiftui/view/focusable(_:interactions:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
