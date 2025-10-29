---
title: buildBlock(_:)
description: Passes a single control widget configuration written as a child control through unmodified.
source: https://developer.apple.com/documentation/swiftui/controlwidgetconfigurationbuilder/buildblock(_:)
timestamp: 2025-10-29T00:10:04.828Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlwidgetconfigurationbuilder](/documentation/swiftui/controlwidgetconfigurationbuilder)

**Type Method**

# buildBlock(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> Passes a single control widget configuration written as a child control through unmodified.

```swift
static func buildBlock<Content>(_ content: Content) -> some ControlWidgetConfiguration where Content : ControlWidgetConfiguration
```

## Discussion

An example of a single control widget configuration written as a child view is `{ StaticControlConfiguration(...) }`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
