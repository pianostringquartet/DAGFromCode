---
title: aspectRatio3D(_:contentMode:)
description: Constrains this view’s dimensions to the specified 3D aspect ratio.
source: https://developer.apple.com/documentation/swiftui/view/aspectratio3d(_:contentmode:)
timestamp: 2025-10-29T00:11:48.200Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# aspectRatio3D(_:contentMode:)

**Available on:** visionOS 26.0+

> Constrains this view’s dimensions to the specified 3D aspect ratio.

```swift
nonisolated func aspectRatio3D(_ aspectRatio: Size3D? = nil, contentMode: ContentMode) -> some View
```

## Parameters

**aspectRatio**

The ratio of width to height to depth to use for the resulting view. If `aspectRatio` is `nil`, the resulting view maintains this view’s aspect ratio.



**contentMode**

A flag indicating whether this view should fit or fill the parent context.



## Return Value

A view that constrains this view’s dimensions to `aspectRatio`, using `contentMode` as its scaling algorithm.

## Discussion

If this view is resizable, the resulting view will have `aspectRatio` as its aspect ratio. In this example, the Model3D has a 2 : 3 : 1 width to height to depth ratio, and scales to fit its frame:

```swift
Model3D(named: "Sphere") { resolved in
    let ratio3D = Size3D(width: 2, height: 3, depth: 1)
    resolved
        .resizable()
        .aspectRatio3D(ratio3D, contentMode: .fit)
} placeholder: {
    ProgressView()
}
.frame(width: 200, height: 200)
.frame(depth: 200)
.border(Color(white: 0.75))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
