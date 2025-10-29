---
title: onContinuousHover(coordinateSpace:perform:)
description: Adds an action to perform when the pointer enters, moves within, and exits the view’s bounds.
source: https://developer.apple.com/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:)
timestamp: 2025-10-29T00:14:22.718Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onContinuousHover(coordinateSpace:perform:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Adds an action to perform when the pointer enters, moves within, and exits the view’s bounds.

```swift
nonisolated func onContinuousHover(coordinateSpace: some CoordinateSpaceProtocol = .local, perform action: @escaping (HoverPhase) -> Void) -> some View
```

## Parameters

**coordinateSpace**

The coordinate space for the location values. The default value is [local](/documentation/swiftui/coordinatespace/local).



**action**

The action to perform whenever the pointer enters, moves within, or exits the view’s bounds. The closure takes a `phase` input that has the value [active(_:)](/documentation/swiftui/hoverphase/active(_:)) and contains the pointer’s coordinates if the pointer is within the view’s bounds. The closure receives the [ended](/documentation/swiftui/hoverphase/ended) phase when the pointer leaves the view’s bounds.



## Return Value

A view that calls `action` when the pointer enters, moves within, or exits the view’s bounds.

## Discussion

Use this modifier to define a region for detecting pointer movement with a view. The following example updates a small rectangle’s position and style by modifying `hoverLocation` and `isHovering` as the pointer moves within the larger, red rectangle:

```swift
@State private var hoverLocation: CGPoint = .zero
@State private var isHovering = false

var body: some View {
    Color.red
        .frame(width: 400, height: 400)
        .onContinuousHover { phase in
            switch phase {
            case .active(let location):
                hoverLocation = location
                isHovering = true
            case .ended:
                isHovering = false
            }
        }
        .overlay {
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundStyle(isHovering ? .green : .blue)
                .offset(x: hoverLocation.x, y: hoverLocation.y)
        }
}
```

## Responding to hover events

- [onHover(perform:)](/documentation/swiftui/view/onhover(perform:))
- [hoverEffect(_:isEnabled:)](/documentation/swiftui/view/hovereffect(_:isenabled:))
- [hoverEffectDisabled(_:)](/documentation/swiftui/view/hovereffectdisabled(_:))
- [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:))
- [isHoverEffectEnabled](/documentation/swiftui/environmentvalues/ishovereffectenabled)
- [HoverPhase](/documentation/swiftui/hoverphase)
- [HoverEffectPhaseOverride](/documentation/swiftui/hovereffectphaseoverride)
- [OrnamentHoverContentEffect](/documentation/swiftui/ornamenthovercontenteffect)
- [OrnamentHoverEffect](/documentation/swiftui/ornamenthovereffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
