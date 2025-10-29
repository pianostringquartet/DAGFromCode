---
title: AccessibilityActionKind
description: The structure that defines the kinds of available accessibility actions.
source: https://developer.apple.com/documentation/swiftui/accessibilityactionkind
timestamp: 2025-10-29T00:10:48.411Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessibilityActionKind

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The structure that defines the kinds of available accessibility actions.

```swift
struct AccessibilityActionKind
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the kind of action

- [default](/documentation/swiftui/accessibilityactionkind/default) The value that represents the default accessibility action.
- [delete](/documentation/swiftui/accessibilityactionkind/delete)
- [escape](/documentation/swiftui/accessibilityactionkind/escape) The value that represents an accessibility action that dismisses a modal view or cancels an operation.
- [magicTap](/documentation/swiftui/accessibilityactionkind/magictap)
- [showMenu](/documentation/swiftui/accessibilityactionkind/showmenu)

## Creating an action type

- [init(named:)](/documentation/swiftui/accessibilityactionkind/init(named:))

## Adding actions to views

- [accessibilityAction(_:_:)](/documentation/swiftui/view/accessibilityaction(_:_:))
- [accessibilityActions(_:)](/documentation/swiftui/view/accessibilityactions(_:))
- [accessibilityAction(named:_:)](/documentation/swiftui/view/accessibilityaction(named:_:))
- [accessibilityAction(action:label:)](/documentation/swiftui/view/accessibilityaction(action:label:))
- [accessibilityAction(intent:label:)](/documentation/swiftui/view/accessibilityaction(intent:label:))
- [accessibilityAction(_:intent:)](/documentation/swiftui/view/accessibilityaction(_:intent:))
- [accessibilityAction(named:intent:)](/documentation/swiftui/view/accessibilityaction(named:intent:))
- [accessibilityAdjustableAction(_:)](/documentation/swiftui/view/accessibilityadjustableaction(_:))
- [accessibilityScrollAction(_:)](/documentation/swiftui/view/accessibilityscrollaction(_:))
- [accessibilityActions(category:_:)](/documentation/swiftui/view/accessibilityactions(category:_:))
- [AccessibilityAdjustmentDirection](/documentation/swiftui/accessibilityadjustmentdirection)
- [AccessibilityActionCategory](/documentation/swiftui/accessibilityactioncategory)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
