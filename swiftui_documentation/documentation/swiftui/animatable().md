---
title: Animatable()
description: A member and extension macro that, when applied to a struct, class or enum declaration, synthesizes the conformance to  and its requirement, the  property using the existing animatable properties of the type this macro is applied to.
source: https://developer.apple.com/documentation/swiftui/animatable()
timestamp: 2025-10-29T00:13:18.005Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Animatable()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A member and extension macro that, when applied to a struct, class or enum declaration, synthesizes the conformance to  and its requirement, the  property using the existing animatable properties of the type this macro is applied to.

```swift
@attached(extension, conformances: Animatable) @attached(member, names: named(animatableData)) macro Animatable()
```

## Overview

```swift
@Animatable
struct CoolShape: Shape {
    var width: CGFloat
    var angle: Angle
    @AnimatableIgnored var isOpaque: Bool

    // ...
}
```

In the above code, `animatableData` will be synthesized using `width` and `angle` properties of `CoolShape` structure.  Since changes to `isOpaque` property cannot be animated, it is annotated with `@AnimatableIgnored`.

> [!NOTE]
> The `@Animatable` macro will not generate an `Animatable` conformance if the type already conforms to `Animatable`.

> [!NOTE]
> It is only possible to attach `@Animatable` to types with properties.

> [!NOTE]
> `@Animatable` will not include computed properties in the synthesized `animatableData`.

## Animating data

- [AnimatableIgnored()](/documentation/swiftui/animatableignored())
- [animatableData](/documentation/swiftui/animatable/animatabledata-6nydg)
- [AnimatableData](/documentation/swiftui/animatable/animatabledata-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
