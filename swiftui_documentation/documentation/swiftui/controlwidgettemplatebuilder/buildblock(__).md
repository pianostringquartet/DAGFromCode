---
title: buildBlock(_:)
description: Passes a single control widget template written as a child view through unmodified.
source: https://developer.apple.com/documentation/swiftui/controlwidgettemplatebuilder/buildblock(_:)
timestamp: 2025-10-29T00:09:15.331Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlwidgettemplatebuilder](/documentation/swiftui/controlwidgettemplatebuilder)

**Type Method**

# buildBlock(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> Passes a single control widget template written as a child view through unmodified.

```swift
static func buildBlock<Content>(_ content: Content) -> some ControlWidgetTemplate where Content : ControlWidgetTemplate
```

## Discussion

An example of a single control widget template written as a child view is `{ ControlWidgetToggle(...) }`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
