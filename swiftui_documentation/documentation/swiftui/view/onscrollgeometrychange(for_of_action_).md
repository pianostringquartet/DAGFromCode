---
title: onScrollGeometryChange(for:of:action:)
description: Adds an action to be performed when a value, created from a scroll geometry, changes.
source: https://developer.apple.com/documentation/swiftui/view/onscrollgeometrychange(for:of:action:)
timestamp: 2025-10-29T00:14:43.522Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onScrollGeometryChange(for:of:action:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds an action to be performed when a value, created from a scroll geometry, changes.

```swift
nonisolated func onScrollGeometryChange<T>(for type: T.Type, of transform: @escaping (ScrollGeometry) -> T, action: @escaping (T, T) -> Void) -> some View where T : Equatable
```

## Parameters

**type**

The type of value transformed from a [Scroll Geometry](/documentation/swiftui/scrollgeometry).



**transform**

A closure that transforms a [Scroll Geometry](/documentation/swiftui/scrollgeometry) to your type.



**action**

A closure to run when the transformed data changes.



## Discussion

The geometry of a scroll view changes frequently while scrolling. You should avoid updating large parts of your app whenever the scroll geometry changes. To aid in this, you provide two closures to this modifier:

- transform: This converts a value of [Scroll Geometry](/documentation/swiftui/scrollgeometry) to a your own data type.
- action: This provides the data type you created in `of` and is called whenever the data type changes.

For example, you can use this modifier to know when the user scrolls a scroll view beyond the top of its content. In the following example, the data type you convert to is a `Bool` and the action is called whenever the `Bool` changes.

```swift
@Binding var isBeyondZero: Bool

ScrollView {
    // ...
}
.onScrollGeometryChange(for: Bool.self) { geometry in
    geometry.contentOffset.y < geometry.contentInsets.top
} action: { wasBeyondZero, isBeyondZero in
    self.isBeyondZero = isBeyondZero
}
```

If multiple scroll views are found within the view hierarchy, only the first one will invoke the closure you provide and a runtime issue will be logged. For example, in the following view, only the vertical scroll view will have its geometry changes invoke the provided closure.

```swift
VStack {
    ScrollView(.vertical) { ... }
    ScrollView(.horizontal) { ... }
}
.onScrollGeometryChange(for: Bool.self) { geometry in
     ...
} action: { oldValue, newValue in
    ...
}
```

For responding to non-scroll geometry changes, see the [onGeometryChange(for:of:action:)](/documentation/swiftui/view/ongeometrychange(for:of:action:)) modifier.

## Responding to scroll view changes

- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:))
- [onScrollVisibilityChange(threshold:_:)](/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:))
- [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:))
- [ScrollGeometry](/documentation/swiftui/scrollgeometry)
- [ScrollPhase](/documentation/swiftui/scrollphase)
- [ScrollPhaseChangeContext](/documentation/swiftui/scrollphasechangecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
