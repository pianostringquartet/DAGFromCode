---
title: body
description: The content and behavior of the scene.
source: https://developer.apple.com/documentation/swiftui/scene/body-swift.property
timestamp: 2025-10-29T00:09:35.384Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Property**

# body

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The content and behavior of the scene.

```swift
@SceneBuilder @MainActor @preconcurrency var body: Self.Body { get }
```

## Discussion

For any scene that you create, provide a computed `body` property that defines the scene as a composition of other scenes. You can assemble a scene from built-in scenes that SwiftUI provides, as well as other scenes that you’ve defined.

Swift infers the scene’s [Body-swift.associatedtype](/documentation/swiftui/scene/body-swift.associatedtype) associated type based on the contents of the `body` property.

## Creating a scene

- [Body](/documentation/swiftui/scene/body-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
