---
title: ControlSize
description: The size classes, like regular or small, that you can apply to controls within a view.
source: https://developer.apple.com/documentation/swiftui/controlsize
timestamp: 2025-10-29T00:13:47.639Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# ControlSize

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 10.15+, tvOS 15.0+, visionOS 1.0+, watchOS 9.0+

> The size classes, like regular or small, that you can apply to controls within a view.

```swift
enum ControlSize
```

## Conforms To

- [CaseIterable](/documentation/Swift/CaseIterable)
- [Comparable](/documentation/Swift/Comparable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting control sizes

- [ControlSize.mini](/documentation/swiftui/controlsize/mini) A control version that is minimally sized.
- [ControlSize.small](/documentation/swiftui/controlsize/small) A control version that is proportionally smaller size for space-constrained views.
- [ControlSize.regular](/documentation/swiftui/controlsize/regular) A control version that is the default size.
- [ControlSize.large](/documentation/swiftui/controlsize/large) A control version that is prominently sized.
- [ControlSize.extraLarge](/documentation/swiftui/controlsize/extralarge) A control version that is substantially sized. The largest control size. Resolves to  on platforms other than visionOS.

## Initializers

- [init(_:)](/documentation/swiftui/controlsize/init(_:)) Creates a control size from its NSControl.ControlSize equivalent.

## Sizing controls

- [controlSize(_:)](/documentation/swiftui/view/controlsize(_:))
- [controlSize](/documentation/swiftui/environmentvalues/controlsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
