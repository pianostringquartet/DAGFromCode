---
title: SceneBuilder
description: A result builder for composing a collection of scenes into a single composite scene.
source: https://developer.apple.com/documentation/swiftui/scenebuilder
timestamp: 2025-10-29T00:10:45.119Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SceneBuilder

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A result builder for composing a collection of scenes into a single composite scene.

```swift
@resultBuilder struct SceneBuilder
```

## Building content

- [buildBlock(_:)](/documentation/swiftui/scenebuilder/buildblock(_:)) Passes a single scene written as a child scene through unmodified.
- [buildExpression(_:)](/documentation/swiftui/scenebuilder/buildexpression(_:)) Builds an expression within the builder.
- [buildLimitedAvailability(_:)](/documentation/swiftui/scenebuilder/buildlimitedavailability(_:)) Processes scene content for a conditional compiler-control statement that performs an availability check.
- [buildOptional(_:)](/documentation/swiftui/scenebuilder/buildoptional(_:)) Produces an optional scene for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.

## Creating scenes

- [Scene](/documentation/swiftui/scene)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
