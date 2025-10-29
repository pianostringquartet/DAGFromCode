---
title: GlassBackgroundDisplayMode.implicit
description: Display the glass material only when the view isn’t already contained in glass.
source: https://developer.apple.com/documentation/swiftui/glassbackgrounddisplaymode/implicit
timestamp: 2025-10-29T00:10:10.573Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [glassbackgrounddisplaymode](/documentation/swiftui/glassbackgrounddisplaymode)

**Case**

# GlassBackgroundDisplayMode.implicit

**Available on:** visionOS 1.0+

> Display the glass material only when the view isn’t already contained in glass.

```swift
case implicit
```

## Discussion

Use this value to avoid duplicate backgrounds when a view that has a glass background contains another view that also has a glass background.

This display mode doesn’t suppress duplicate glass backgrounds for views that are offset by any amount in the z-axis. For example, the two subviews of the following [HStack](/documentation/swiftui/hstack) behave differently:

```swift
HStack {
    MyView()
        .glassBackgroundEffect(displayMode: .implicit)
    MyView()
        .glassBackgroundEffect(displayMode: .implicit)
        .offset(z: 100)
}
.glassBackgroundEffect(displayMode: .always)
```

The first instance of `MyView` doesn’t display a background because its container displays one. However the second instance does display a background because that view is offset from its container by 100 points along the z-axis.

## Getting the mode

- [GlassBackgroundDisplayMode.always](/documentation/swiftui/glassbackgrounddisplaymode/always)
- [GlassBackgroundDisplayMode.never](/documentation/swiftui/glassbackgrounddisplaymode/never)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
