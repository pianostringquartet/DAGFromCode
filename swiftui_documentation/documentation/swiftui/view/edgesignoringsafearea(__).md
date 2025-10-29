---
title: edgesIgnoringSafeArea(_:)
description: Changes the view’s proposed area to extend outside the screen’s safe areas.
source: https://developer.apple.com/documentation/swiftui/view/edgesignoringsafearea(_:)
timestamp: 2025-10-29T00:13:29.914Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# edgesIgnoringSafeArea(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Changes the view’s proposed area to extend outside the screen’s safe areas.

```swift
nonisolated func edgesIgnoringSafeArea(_ edges: Edge.Set) -> some View
```

## Parameters

**edges**

The set of the edges in which to expand the size requested for this view.



## Return Value

A view that may extend outside of the screen’s safe area on the edges specified by `edges`.

## Discussion

Use `edgesIgnoringSafeArea(_:)` to change the area proposed for this view so that — were the proposal accepted — this view could extend outside the safe area to the bounds of the screen for the specified edges.

For example, you can propose that a text view ignore the safe area’s top inset:

```swift
VStack {
    Text("This text is outside of the top safe area.")
        .edgesIgnoringSafeArea([.top])
        .border(Color.purple)
    Text("This text is inside VStack.")
        .border(Color.yellow)
}
.border(Color.gray)
```



Depending on the surrounding view hierarchy, SwiftUI may not honor an `edgesIgnoringSafeArea(_:)` request. This can happen, for example, if the view is inside a container that respects the screen’s safe area. In that case you may need to apply `edgesIgnoringSafeArea(_:)` to the container instead.

## Layout modifiers

- [frame()](/documentation/swiftui/view/frame())
- [coordinateSpace(name:)](/documentation/swiftui/view/coordinatespace(name:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
