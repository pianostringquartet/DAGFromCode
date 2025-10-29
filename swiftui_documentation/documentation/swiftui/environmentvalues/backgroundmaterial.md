---
title: backgroundMaterial
description: The material underneath the current view.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/backgroundmaterial
timestamp: 2025-10-29T00:12:33.906Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# backgroundMaterial

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The material underneath the current view.

```swift
var backgroundMaterial: Material? { get set }
```

## Discussion

This value is `nil` if the current background isn’t one of the standard materials. If you set a material, the standard content styles enable their vibrant rendering modes.

You set this value by calling one of the background modifiers that takes a [Shape Style](/documentation/swiftui/shapestyle), like [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)) or [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)), and passing in a [Material](/documentation/swiftui/material). You can also set the value manually, using `nil` to disable vibrant rendering, or a [Material](/documentation/swiftui/material) instance to enable the vibrancy style associated with the specified material.

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:))
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:))
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:))
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:))
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
