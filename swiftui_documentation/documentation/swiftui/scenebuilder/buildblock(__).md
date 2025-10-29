---
title: buildBlock(_:)
description: Passes a single scene written as a child scene through unmodified.
source: https://developer.apple.com/documentation/swiftui/scenebuilder/buildblock(_:)
timestamp: 2025-10-29T00:10:02.104Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenebuilder](/documentation/swiftui/scenebuilder)

**Type Method**

# buildBlock(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Passes a single scene written as a child scene through unmodified.

```swift
static func buildBlock<Content>(_ content: Content) -> Content where Content : Scene
```

## Building content

- [buildExpression(_:)](/documentation/swiftui/scenebuilder/buildexpression(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/scenebuilder/buildlimitedavailability(_:))
- [buildOptional(_:)](/documentation/swiftui/scenebuilder/buildoptional(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
