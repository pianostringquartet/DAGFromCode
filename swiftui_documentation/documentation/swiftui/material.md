---
title: Material
description: A background material type.
source: https://developer.apple.com/documentation/swiftui/material
timestamp: 2025-10-29T00:09:48.825Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Material

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A background material type.

```swift
struct Material
```

## Overview

You can apply a blur effect to a view that appears behind another view by adding a material with the [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)) modifier:

```swift
ZStack {
    Color.teal
    Label("Flag", systemImage: "flag.fill")
        .padding()
        .background(.regularMaterial)
}
```

In the example above, the [ZStack](/documentation/swiftui/zstack) layers a [Label](/documentation/swiftui/label) on top of the color [teal](/documentation/swiftui/shapestyle/teal). The background modifier inserts the regular material below the label, blurring the part of the background that the label — including its padding — covers:



A material isn’t a view, but adding a material is like inserting a translucent layer between the modified view and its background:



The blurring effect provided by the material isn’t simple opacity. Instead, it uses a platform-specific blending that produces an effect that resembles heavily frosted glass. You can see this more easily with a complex background, like an image:

```swift
ZStack {
    Image("chili_peppers")
        .resizable()
        .aspectRatio(contentMode: .fit)
    Label("Flag", systemImage: "flag.fill")
        .padding()
        .background(.regularMaterial)
}
```



For physical materials, the degree to which the background colors pass through depends on the thickness. The effect also varies with light and dark appearance:



If you need a material to have a particular shape, you can use the [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)) modifier. For example, you can create a material with rounded corners:

```swift
ZStack {
    Color.teal
    Label("Flag", systemImage: "flag.fill")
        .padding()
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 8))
}
```



When you add a material, foreground elements exhibit vibrancy, a context-specific blend of the foreground and background colors that improves contrast. However using [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:)) to set a custom foreground style — excluding the hierarchical styles, like [secondary-swift.type.property](/documentation/swiftui/shapestyle/secondary-swift.type.property) — disables vibrancy.

> [!NOTE]
> A material blurs a background that’s part of your app, but not what appears behind your app on the screen. For example, the content on the Home Screen doesn’t affect the appearance of a widget.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)

## Getting material types

- [ultraThin](/documentation/swiftui/material/ultrathin) A mostly translucent material.
- [thin](/documentation/swiftui/material/thin) A material that’s more translucent than opaque.
- [regular](/documentation/swiftui/material/regular) A material that’s somewhat translucent.
- [thick](/documentation/swiftui/material/thick) A material that’s more opaque than translucent.
- [ultraThick](/documentation/swiftui/material/ultrathick) A mostly opaque material.
- [bar](/documentation/swiftui/material/bar) A material matching the style of system toolbars.

## Instance Methods

- [materialActiveAppearance(_:)](/documentation/swiftui/material/materialactiveappearance(_:)) Sets an explicit active appearance for this material.

## Supporting types

- [AngularGradient](/documentation/swiftui/angulargradient)
- [EllipticalGradient](/documentation/swiftui/ellipticalgradient)
- [LinearGradient](/documentation/swiftui/lineargradient)
- [RadialGradient](/documentation/swiftui/radialgradient)
- [ImagePaint](/documentation/swiftui/imagepaint)
- [HierarchicalShapeStyle](/documentation/swiftui/hierarchicalshapestyle)
- [HierarchicalShapeStyleModifier](/documentation/swiftui/hierarchicalshapestylemodifier)
- [ForegroundStyle](/documentation/swiftui/foregroundstyle)
- [BackgroundStyle](/documentation/swiftui/backgroundstyle)
- [SelectionShapeStyle](/documentation/swiftui/selectionshapestyle)
- [SeparatorShapeStyle](/documentation/swiftui/separatorshapestyle)
- [TintShapeStyle](/documentation/swiftui/tintshapestyle)
- [FillShapeStyle](/documentation/swiftui/fillshapestyle)
- [LinkShapeStyle](/documentation/swiftui/linkshapestyle)
- [PlaceholderTextShapeStyle](/documentation/swiftui/placeholdertextshapestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
