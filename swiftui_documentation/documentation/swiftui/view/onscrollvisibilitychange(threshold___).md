---
title: onScrollVisibilityChange(threshold:_:)
description: Adds an action to be called when the view crosses the threshold to be considered on/off screen.
source: https://developer.apple.com/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:)
timestamp: 2025-10-29T00:12:13.485Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onScrollVisibilityChange(threshold:_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds an action to be called when the view crosses the threshold to be considered on/off screen.

```swift
nonisolated func onScrollVisibilityChange(threshold: Double = 0.5, _ action: @escaping (Bool) -> Void) -> some View
```

## Parameters

**threshold**

The amount required to be visible within the viewport of the parent view before the `action` is fired. By default when the view has crossed more than 50% on-screen, the action will be called.



**action**

The action which will be called when the threshold has been reached.



## Discussion

Use this modifier to be informed when the view has crossed the provided threshold to be considered on/off screen.

```swift
struct VideoPlayer: View {
    @State var playing: Bool

    var body: some View {
        Group {
            // ...
        }
        .onScrollVisibilityChange(threshold: 0.2) { isVisible in
            playing = isVisible
        }
    }
}
```

When the view appears on-screen, the action will be called if the threshold has already been reached.

## Responding to scroll view changes

- [onScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/onscrollgeometrychange(for:of:action:))
- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:))
- [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:))
- [ScrollGeometry](/documentation/swiftui/scrollgeometry)
- [ScrollPhase](/documentation/swiftui/scrollphase)
- [ScrollPhaseChangeContext](/documentation/swiftui/scrollphasechangecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
