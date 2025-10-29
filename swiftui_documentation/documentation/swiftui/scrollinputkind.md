---
title: ScrollInputKind
description: Inputs used to scroll views.
source: https://developer.apple.com/documentation/swiftui/scrollinputkind
timestamp: 2025-10-29T00:13:32.414Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollInputKind

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Inputs used to scroll views.

```swift
struct ScrollInputKind
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [handGestureShortcut](/documentation/swiftui/scrollinputkind/handgestureshortcut) A finger or wrist movement that the user can perform in order to scroll a view.
- [look](/documentation/swiftui/scrollinputkind/look) On visionOS, by looking at the edge of a scroll view the content can automatically scroll. The axes will be determined automatically.

## Type Methods

- [look(axes:)](/documentation/swiftui/scrollinputkind/look(axes:)) On visionOS, by looking at the edge of a scroll view the content can automatically scroll. This contructor method takes a set of the scrollable axes.

## Managing scrolling for different inputs

- [scrollInputBehavior(_:for:)](/documentation/swiftui/view/scrollinputbehavior(_:for:))
- [ScrollInputBehavior](/documentation/swiftui/scrollinputbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
