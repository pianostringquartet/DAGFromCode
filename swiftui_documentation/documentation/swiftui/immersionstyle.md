---
title: ImmersionStyle
description: The styles that an immersive space can have.
source: https://developer.apple.com/documentation/swiftui/immersionstyle
timestamp: 2025-10-29T00:09:15.555Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ImmersionStyle

**Available on:** macOS 26.0+, visionOS 1.0+

> The styles that an immersive space can have.

```swift
protocol ImmersionStyle
```

## Overview

Configure the appearance and behavior of an [Immersive Space](/documentation/swiftui/immersivespace) by adding the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) scene modifier to the space and specifying a style that conforms to this protocol, like [mixed](/documentation/swiftui/immersionstyle/mixed) or [full](/documentation/swiftui/immersionstyle/full). For example, the following app defines a solar system scene that uses full immersion:

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

## Conforming Types

- [AutomaticImmersionStyle](/documentation/swiftui/automaticimmersionstyle)
- [FullImmersionStyle](/documentation/swiftui/fullimmersionstyle)
- [MixedImmersionStyle](/documentation/swiftui/mixedimmersionstyle)
- [ProgressiveImmersionStyle](/documentation/swiftui/progressiveimmersionstyle)

## Getting built-in styles

- [automatic](/documentation/swiftui/immersionstyle/automatic) The default immersion style.
- [full](/documentation/swiftui/immersionstyle/full) An immersion style that displays unbounded content that completely replaces passthrough video.
- [mixed](/documentation/swiftui/immersionstyle/mixed) An immersion style that displays unbounded content intermixed with other app content, along with passthrough video.
- [progressive](/documentation/swiftui/immersionstyle/progressive) An immersion style that displays unbounded content that partially replaces passthrough video.

## Supporting types

- [AutomaticImmersionStyle](/documentation/swiftui/automaticimmersionstyle) The default style of immersive spaces.
- [FullImmersionStyle](/documentation/swiftui/fullimmersionstyle) An immersion style that displays unbounded content that completely replaces passthrough video.
- [MixedImmersionStyle](/documentation/swiftui/mixedimmersionstyle) An immersion style that displays unbounded content intermixed with other app content, along with passthrough video.
- [ProgressiveImmersionStyle](/documentation/swiftui/progressiveimmersionstyle) An immersion style that displays unbounded content that partially replaces passthrough video.

## Type Methods

- [progressive(_:initialAmount:)](/documentation/swiftui/immersionstyle/progressive(_:initialamount:)) An immersion style that displays unbounded content that partially replaces passthrough video.
- [progressive(_:initialAmount:aspectRatio:)](/documentation/swiftui/immersionstyle/progressive(_:initialamount:aspectratio:)) An immersion style that displays unbounded content that partially replaces passthrough video.
- [progressive(aspectRatio:)](/documentation/swiftui/immersionstyle/progressive(aspectratio:)) An immersion style that displays unbounded content that partially replaces passthrough video.

## Creating an immersive space

- [ImmersiveSpace](/documentation/swiftui/immersivespace)
- [ImmersiveSpaceContentBuilder](/documentation/swiftui/immersivespacecontentbuilder)
- [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:))
- [immersiveSpaceDisplacement](/documentation/swiftui/environmentvalues/immersivespacedisplacement)
- [ImmersiveEnvironmentBehavior](/documentation/swiftui/immersiveenvironmentbehavior)
- [ProgressiveImmersionAspectRatio](/documentation/swiftui/progressiveimmersionaspectratio)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
