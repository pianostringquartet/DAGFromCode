---
title: scaledToFit3D()
description: Scales this view to fit its parent.
source: https://developer.apple.com/documentation/swiftui/view/scaledtofit3d()
timestamp: 2025-10-29T00:10:42.183Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scaledToFit3D()

**Available on:** visionOS 26.0+

> Scales this view to fit its parent.

```swift
nonisolated func scaledToFit3D() -> some View
```

## Return Value

A view that scales this view to fit its parent, maintaining this view’s aspect ratio.

## Discussion

This view’s 3D aspect ratio is maintained as the view scales. This method is equivalent to calling `aspectRatio3D(nil, contentMode: .fit)`.

```swift
Model3D(named: "Plane") { resolved in
    resolved
        .resizable()
        .scaledToFit3D()
} placeholder: {
    ProgressView()
}
.frame(width: 400, height: 400)
.frame(depth: 200)
.border(Color(white: 0.75))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
