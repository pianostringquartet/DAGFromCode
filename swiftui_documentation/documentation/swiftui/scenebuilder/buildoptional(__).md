---
title: buildOptional(_:)
description: Produces an optional scene for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.
source: https://developer.apple.com/documentation/swiftui/scenebuilder/buildoptional(_:)
timestamp: 2025-10-29T00:10:55.629Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenebuilder](/documentation/swiftui/scenebuilder)

**Type Method**

# buildOptional(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Produces an optional scene for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.

```swift
static func buildOptional(_ scene: (any Scene & _LimitedAvailabilitySceneMarker)?) -> some Scene
```

## Discussion

Conditional statements in a [Scene Builder](/documentation/swiftui/scenebuilder) can contain an `if` statement but not an `else` statement, and the condition can only perform a compiler check for availability, like in the following code:

```swift
var body: some Scene {
    if #available(iOS 16, *) {
        WindowGroup {
            ContentView()
        }
    }
}
```

## Building content

- [buildBlock(_:)](/documentation/swiftui/scenebuilder/buildblock(_:))
- [buildExpression(_:)](/documentation/swiftui/scenebuilder/buildexpression(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/scenebuilder/buildlimitedavailability(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
