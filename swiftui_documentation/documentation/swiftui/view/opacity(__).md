---
title: opacity(_:)
description: Sets the transparency of this view.
source: https://developer.apple.com/documentation/swiftui/view/opacity(_:)
timestamp: 2025-10-29T00:13:06.110Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# opacity(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the transparency of this view.

```swift
nonisolated func opacity(_ opacity: Double) -> some View
```

## Parameters

**opacity**

A value between 0 (fully transparent) and 1 (fully opaque).



## Return Value

A view that sets the transparency of this view.

## Discussion

Apply opacity to reveal views that are behind another view or to de-emphasize a view.

When applying the `opacity(_:)` modifier to a view that has already had its opacity transformed, the modifier multiplies the effect of the underlying opacity transformation.

The example below shows yellow and red rectangles configured to overlap. The top yellow rectangle has its opacity set to 50%, allowing the occluded portion of the bottom rectangle to be visible:

```swift
struct Opacity: View {
    var body: some View {
        VStack {
            Color.yellow.frame(width: 100, height: 100, alignment: .center)
                .zIndex(1)
                .opacity(0.5)

            Color.red.frame(width: 100, height: 100, alignment: .center)
                .padding(-40)
        }
    }
}
```



## Hiding views

- [hidden()](/documentation/swiftui/view/hidden())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
