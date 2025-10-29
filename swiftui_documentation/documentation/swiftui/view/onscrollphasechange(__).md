---
title: onScrollPhaseChange(_:)
description: Adds an action to perform when the scroll phase of the first scroll view in the hierarchy changes.
source: https://developer.apple.com/documentation/swiftui/view/onscrollphasechange(_:)
timestamp: 2025-10-29T00:11:50.175Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onScrollPhaseChange(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds an action to perform when the scroll phase of the first scroll view in the hierarchy changes.

```swift
nonisolated func onScrollPhaseChange(_ action: @escaping (ScrollPhase, ScrollPhase) -> Void) -> some View
```

## Parameters

**action**

A closure to run when the scroll phase changes.



## Discussion

Use this modifier to be informed of changes to a scroll view’s phase. A scroll view may be in a variety of different phases like panning or decelerating. See [Scroll Phase](/documentation/swiftui/scrollphase) for more information on the phases of a scroll view.

When the phase of a scroll view changes, the system invokes the action you provide. In the following example, a selection binding is updated when the scroll view transitions to the [decelerating](/documentation/swiftui/scrollphase/decelerating) or [idle](/documentation/swiftui/scrollphase/idle) phase.

```swift
@Binding var selection: SelectionValue?

ScrollView {
    // ...
}
.onScrollPhaseChange { _, newPhase in
    if newPhase == .decelerating || newPhase == .idle {
        selection = updateSelection()
    }
}
```

The system can also provide you with the geometry of the scroll view at the time of the phase change. You can use the geometry to understand where the scroll view has come or gone between the phase changes and update dependent state on that information. In the following example, whether toolbar content is hidden is determined based on the direction of the last user initiated scroll.

```swift
@Binding var hidesToolbarContent: Bool
@State private var lastOffset: CGFloat = 0.0

ScrollView {
    // ...
}
.onScrollPhaseChange { oldPhase, newPhase, context in
    if newPhase == .interacting {
        lastOffset = context.geometry.contentOffset.y
    }
    if oldPhase == .interacting, newPhase != .animating,
        context.geometry.contentOffset.y - lastOffset < 0.0
    {
        hidesToolbarContent = true
    } else {
        hidesToolbarContent = false
    }
}
```

If multiple scroll views are found within the view hierarchy, only the first one will invoke the closure you provide and a runtime issue will be logged. For example, in the following view, only the vertical scroll view will have its phase changes invoke the provided closure.

```swift
VStack {
    ScrollView(.vertical) { ... }
    ScrollView(.horizontal) { ... }
}
.onScrollPhaseChange { ... }
```

## Responding to scroll view changes

- [onScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/onscrollgeometrychange(for:of:action:))
- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:))
- [onScrollVisibilityChange(threshold:_:)](/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:))
- [ScrollGeometry](/documentation/swiftui/scrollgeometry)
- [ScrollPhase](/documentation/swiftui/scrollphase)
- [ScrollPhaseChangeContext](/documentation/swiftui/scrollphasechangecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
