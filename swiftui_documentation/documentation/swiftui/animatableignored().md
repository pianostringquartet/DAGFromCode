---
title: AnimatableIgnored()
description: An accessor macro that marks a property of a type to be excluded from the  synthesis:
source: https://developer.apple.com/documentation/swiftui/animatableignored()
timestamp: 2025-10-29T00:12:31.540Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# AnimatableIgnored()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An accessor macro that marks a property of a type to be excluded from the  synthesis:

```swift
@attached(accessor, names: named(willSet)) macro AnimatableIgnored()
```

## Overview

```swift
@Animatable
struct CoolShape: Shape {
    var width: CGFloat
    var height: CGFloat
    @AnimatableIgnored var isVisible: Bool

    // ...
}
```

In the above example, the `isVisible` property of `CoolShape` will not be participating in the synthesis of `animatableData`.

## Animating data

- [Animatable()](/documentation/swiftui/animatable())
- [animatableData](/documentation/swiftui/animatable/animatabledata-6nydg)
- [AnimatableData](/documentation/swiftui/animatable/animatabledata-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
