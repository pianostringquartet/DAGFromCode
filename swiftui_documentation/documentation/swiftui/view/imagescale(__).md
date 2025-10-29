---
title: imageScale(_:)
description: Scales images within the view according to one of the relative sizes available including small, medium, and large images sizes.
source: https://developer.apple.com/documentation/swiftui/view/imagescale(_:)
timestamp: 2025-10-29T00:15:22.990Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# imageScale(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 11.0+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Scales images within the view according to one of the relative sizes available including small, medium, and large images sizes.

```swift
nonisolated func imageScale(_ scale: Image.Scale) -> some View
```

## Parameters

**scale**

One of the relative sizes provided by the image scale enumeration.



## Discussion

The example below shows the relative scaling effect. The system renders the image at a relative size based on the available space and configuration options of the image it is scaling.

```swift
VStack {
    HStack {
        Image(systemName: "heart.fill")
            .imageScale(.small)
        Text("Small")
    }
    HStack {
        Image(systemName: "heart.fill")
            .imageScale(.medium)
        Text("Medium")
    }

    HStack {
        Image(systemName: "heart.fill")
            .imageScale(.large)
        Text("Large")
    }
}
```



## Configuring an image

- [Fitting images into available space](/documentation/swiftui/fitting-images-into-available-space)
- [imageScale](/documentation/swiftui/environmentvalues/imagescale)
- [Image.Scale](/documentation/swiftui/image/scale)
- [Image.Orientation](/documentation/swiftui/image/orientation)
- [Image.ResizingMode](/documentation/swiftui/image/resizingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
