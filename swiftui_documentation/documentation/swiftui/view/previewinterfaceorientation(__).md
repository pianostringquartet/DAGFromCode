---
title: previewInterfaceOrientation(_:)
description: Overrides the orientation of the preview.
source: https://developer.apple.com/documentation/swiftui/view/previewinterfaceorientation(_:)
timestamp: 2025-10-29T00:13:27.039Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# previewInterfaceOrientation(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Overrides the orientation of the preview.

```swift
nonisolated func previewInterfaceOrientation(_ value: InterfaceOrientation) -> some View
```

## Parameters

**value**

An orientation to use for preview.



## Return Value

A preview that uses the given orientation.

## Discussion

By default, device previews appear right side up, using orientation [portrait](/documentation/swiftui/interfaceorientation/portrait). You can change the orientation of a preview using one of the values in the [Interface Orientation](/documentation/swiftui/interfaceorientation) structure:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
```

## Customizing a preview

- [previewDevice(_:)](/documentation/swiftui/view/previewdevice(_:))
- [PreviewDevice](/documentation/swiftui/previewdevice)
- [previewLayout(_:)](/documentation/swiftui/view/previewlayout(_:))
- [InterfaceOrientation](/documentation/swiftui/interfaceorientation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
