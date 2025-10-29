---
title: ScrollAnchorRole
description: A type defining the role of a scroll anchor.
source: https://developer.apple.com/documentation/swiftui/scrollanchorrole
timestamp: 2025-10-29T00:15:20.983Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollAnchorRole

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type defining the role of a scroll anchor.

```swift
struct ScrollAnchorRole
```

## Overview

You can associate a [Unit Point](/documentation/swiftui/unitpoint) to a [Scroll View](/documentation/swiftui/scrollview) using the [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:)) modifier. By default, the system uses this point for different kinds of behaviors including:

- Where the scroll view should initially be scrolled
- How the scroll view should handle content size or container size changes
- How the scroll view should align content smaller than its container size

You can further customize this behavior by assigning different unit points for these different roles.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [alignment](/documentation/swiftui/scrollanchorrole/alignment) The role that influences how a scroll view should align its content when the size of its content is smaller than the container size of the scroll view.
- [initialOffset](/documentation/swiftui/scrollanchorrole/initialoffset) The role that influences where a scroll view should be initially scrolled.
- [sizeChanges](/documentation/swiftui/scrollanchorrole/sizechanges) The role that influences how a scroll view should adjust its content offset when the scroll view’s content or container size changes.

## Managing scroll position

- [scrollPosition(_:anchor:)](/documentation/swiftui/view/scrollposition(_:anchor:))
- [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:))
- [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:))
- [defaultScrollAnchor(_:for:)](/documentation/swiftui/view/defaultscrollanchor(_:for:))
- [ScrollPosition](/documentation/swiftui/scrollposition)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
