---
title: ScrollBounceBehavior
description: The ways that a scrollable view can bounce when it reaches the end of its content.
source: https://developer.apple.com/documentation/swiftui/scrollbouncebehavior
timestamp: 2025-10-29T00:10:52.988Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollBounceBehavior

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> The ways that a scrollable view can bounce when it reaches the end of its content.

```swift
struct ScrollBounceBehavior
```

## Overview

Use the [scrollBounceBehavior(_:axes:)](/documentation/swiftui/view/scrollbouncebehavior(_:axes:)) view modifier to set a value of this type for a scrollable view, like a [Scroll View](/documentation/swiftui/scrollview) or a [List](/documentation/swiftui/list). The value configures the bounce behavior when people scroll to the end of the view’s content.

You can configure each scrollable axis to use a different bounce mode.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Bounce behaviors

- [automatic](/documentation/swiftui/scrollbouncebehavior/automatic) The automatic behavior.
- [always](/documentation/swiftui/scrollbouncebehavior/always) The scrollable view always bounces.
- [basedOnSize](/documentation/swiftui/scrollbouncebehavior/basedonsize) The scrollable view bounces when its content is large enough to require scrolling.

## Configuring scroll bounce behavior

- [scrollBounceBehavior(_:axes:)](/documentation/swiftui/view/scrollbouncebehavior(_:axes:))
- [horizontalScrollBounceBehavior](/documentation/swiftui/environmentvalues/horizontalscrollbouncebehavior)
- [verticalScrollBounceBehavior](/documentation/swiftui/environmentvalues/verticalscrollbouncebehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
