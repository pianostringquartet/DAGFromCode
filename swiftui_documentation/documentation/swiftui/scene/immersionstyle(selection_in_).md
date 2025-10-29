---
title: immersionStyle(selection:in:)
description: Sets the style for an immersive space.
source: https://developer.apple.com/documentation/swiftui/scene/immersionstyle(selection:in:)
timestamp: 2025-10-29T00:14:18.609Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# immersionStyle(selection:in:)

**Available on:** macOS 26.0+, visionOS 1.0+

> Sets the style for an immersive space.

```swift
nonisolated func immersionStyle(selection: Binding<any ImmersionStyle>, in styles: any ImmersionStyle...) -> some Scene
```

## Parameters

**selection**

A [Binding](/documentation/swiftui/binding) to the style that the space uses. You can change this value to change the scene’s style even after you present the immersive space. Even though you provide a binding, the value changes only if you change it.



**styles**

The list of styles that the `selection` input can have. Include any styles that you plan to use during the lifetime of the scene.



## Return Value

A scene that uses one of the specified `styles`.

## Discussion

Use this modifier to configure the appearance and behavior of an [Immersive Space](/documentation/swiftui/immersivespace). Specify a style that conforms to the [Immersion Style](/documentation/swiftui/immersionstyle) protocol, like [mixed](/documentation/swiftui/immersionstyle/mixed) or [full](/documentation/swiftui/immersionstyle/full). For example, the following app defines a solar system scene that uses full immersion:

```swift
@main
struct SolarSystemApp: App {
    @State private var style: ImmersionStyle = .full

    var body: some Scene {
        ImmersiveSpace {
            SolarSystem()
        }
        .immersionStyle(selection: $style, in: .full)
    }
}
```

## Creating an immersive space

- [ImmersiveSpace](/documentation/swiftui/immersivespace)
- [ImmersiveSpaceContentBuilder](/documentation/swiftui/immersivespacecontentbuilder)
- [ImmersionStyle](/documentation/swiftui/immersionstyle)
- [immersiveSpaceDisplacement](/documentation/swiftui/environmentvalues/immersivespacedisplacement)
- [ImmersiveEnvironmentBehavior](/documentation/swiftui/immersiveenvironmentbehavior)
- [ProgressiveImmersionAspectRatio](/documentation/swiftui/progressiveimmersionaspectratio)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
