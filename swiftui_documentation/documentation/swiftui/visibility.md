---
title: Visibility
description: The visibility of a UI element, chosen automatically based on the platform, current context, and other factors.
source: https://developer.apple.com/documentation/swiftui/visibility
timestamp: 2025-10-29T00:12:26.726Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# Visibility

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The visibility of a UI element, chosen automatically based on the platform, current context, and other factors.

```swift
@frozen enum Visibility
```

## Overview

For example, the preferred visibility of list row separators can be configured using the [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:)).

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [CaseIterable](/documentation/Swift/CaseIterable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting visibility options

- [Visibility.automatic](/documentation/swiftui/visibility/automatic) The element may be visible or hidden depending on the policies of the component accepting the visibility configuration.
- [Visibility.visible](/documentation/swiftui/visibility/visible) The element may be visible.
- [Visibility.hidden](/documentation/swiftui/visibility/hidden) The element may be hidden.

## Hiding system elements

- [labelsHidden()](/documentation/swiftui/view/labelshidden())
- [labelsVisibility(_:)](/documentation/swiftui/view/labelsvisibility(_:))
- [labelsVisibility](/documentation/swiftui/environmentvalues/labelsvisibility)
- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:))
- [statusBarHidden(_:)](/documentation/swiftui/view/statusbarhidden(_:))
- [persistentSystemOverlays(_:)](/documentation/swiftui/view/persistentsystemoverlays(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
