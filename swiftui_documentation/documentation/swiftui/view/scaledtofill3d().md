---
title: scaledToFill3D()
description: Scales this view to fill its parent.
source: https://developer.apple.com/documentation/swiftui/view/scaledtofill3d()
timestamp: 2025-10-29T00:09:14.261Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scaledToFill3D()

**Available on:** visionOS 26.0+

> Scales this view to fill its parent.

```swift
nonisolated func scaledToFill3D() -> some View
```

## Return Value

A view that scales this view to fit its parent, maintaining this view’s aspect ratio.

## Discussion

This view’s 3D aspect ratio is maintained as the view scales. This method is equivalent to calling `aspectRatio3D(nil, contentMode: .fill)`.

```swift
Model3D(named: "Sphere") { resolved in
    resolved
        .resizable()
        .scaledToFill3D()
} placeholder: {
    ProgressView()
}
.frame(width: 300, height: 100)
.frame(depth: 300)
.border(Color(white: 0.75))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
