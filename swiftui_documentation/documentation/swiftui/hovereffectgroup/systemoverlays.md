---
title: systemOverlays
description: A  that becomes active when system overlays are visible.
source: https://developer.apple.com/documentation/swiftui/hovereffectgroup/systemoverlays
timestamp: 2025-10-29T00:11:30.184Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectgroup](/documentation/swiftui/hovereffectgroup)

**Type Property**

# systemOverlays

**Available on:** visionOS 26.0+

> A  that becomes active when system overlays are visible.

```swift
static var systemOverlays: HoverEffectGroup { get }
```

## Discussion

Use this group to synchronize effects with system overlays. In the following example, the back button will be hidden whenever system overlays are hidden.

```swift
Button("Back") { }
    .hoverEffect(in: .systemOverlays) { e, isActive, _ in
        e.animation(
            isActive ? .systemOverlayAppearance : .systemOverlayDelayedDisappearance
        ) {
            $0.opacity(isActive ? 1 : 0)
        }
    }
    .persistentSystemOverlays(.hidden)
```

This example uses the `systemOverlayAppearance` and `systemOverlayDisappearance` animations to ensure the effect using the same timing as system overlays.

If `persistentSystemOverlays` is not `.hidden`, this group will always be active.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
