---
title: overlay(_:alignment:)
description: Layers a secondary view in front of this view.
source: https://developer.apple.com/documentation/swiftui/view/overlay(_:alignment:)
timestamp: 2025-10-29T00:14:06.531Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# overlay(_:alignment:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Layers a secondary view in front of this view.

```swift
nonisolated func overlay<Overlay>(_ overlay: Overlay, alignment: Alignment = .center) -> some View where Overlay : View
```

## Parameters

**overlay**

The view to layer in front of this view.



**alignment**

The alignment for `overlay` in relation to this view.



## Return Value

A view that layers `overlay` in front of the view.

## Discussion

When you apply an overlay to a view, the original view continues to provide the layout characteristics for the resulting view. In the following example, the heart image is shown overlaid in front of, and aligned to the bottom of the folder image.

```swift
Image(systemName: "folder")
    .font(.system(size: 55, weight: .thin))
    .overlay(Text("❤️"), alignment: .bottom)
```



## Appearance modifiers

- [colorScheme(_:)](/documentation/swiftui/view/colorscheme(_:))
- [listRowPlatterColor(_:)](/documentation/swiftui/view/listrowplattercolor(_:))
- [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:))
- [foregroundColor(_:)](/documentation/swiftui/view/foregroundcolor(_:))
- [complicationForeground()](/documentation/swiftui/view/complicationforeground())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
