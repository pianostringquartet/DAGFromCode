---
title: Images
description: Add images and symbols to your app’s user interface.
source: https://developer.apple.com/documentation/swiftui/images
timestamp: 2025-10-29T00:10:25.850Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Images

> Add images and symbols to your app’s user interface.

## Overview

Display images, including [sf](/design/Human-Interface-Guidelines/sf-symbols), images that you store in an asset catalog, and images that you store on disk, using an [Image](/documentation/swiftui/image) view.



For images that take time to retrieve — for example, when you load an image from a network endpoint — load the image asynchronously using [Async Image](/documentation/swiftui/asyncimage). You can instruct that view to display a placeholder during the load operation.

For design guidance, see [images](/design/Human-Interface-Guidelines/images) in the Human Interface Guidelines.

## Creating an image

- [Image](/documentation/swiftui/image) A view that displays an image.

## Configuring an image

- [Fitting images into available space](/documentation/swiftui/fitting-images-into-available-space) Adjust the size and shape of images in your app’s user interface by applying view modifiers.
- [imageScale(_:)](/documentation/swiftui/view/imagescale(_:)) Scales images within the view according to one of the relative sizes available including small, medium, and large images sizes.
- [imageScale](/documentation/swiftui/environmentvalues/imagescale) The image scale for this environment.
- [Image.Scale](/documentation/swiftui/image/scale) A scale to apply to vector images relative to text.
- [Image.Orientation](/documentation/swiftui/image/orientation) The orientation of an image.
- [Image.ResizingMode](/documentation/swiftui/image/resizingmode) The modes that SwiftUI uses to resize an image to fit within its containing view.

## Loading images asynchronously

- [AsyncImage](/documentation/swiftui/asyncimage) A view that asynchronously loads and displays an image.
- [AsyncImagePhase](/documentation/swiftui/asyncimagephase) The current phase of the asynchronous image loading operation.

## Setting a symbol variant

- [symbolVariant(_:)](/documentation/swiftui/view/symbolvariant(_:)) Makes symbols within the view show a particular variant.
- [symbolVariants](/documentation/swiftui/environmentvalues/symbolvariants) The symbol variant to use in this environment.
- [SymbolVariants](/documentation/swiftui/symbolvariants) A variant of a symbol.

## Managing symbol effects

- [symbolEffect(_:options:isActive:)](/documentation/swiftui/view/symboleffect(_:options:isactive:)) Returns a new view with a symbol effect added to it.
- [symbolEffect(_:options:value:)](/documentation/swiftui/view/symboleffect(_:options:value:)) Returns a new view with a symbol effect added to it.
- [symbolEffectsRemoved(_:)](/documentation/swiftui/view/symboleffectsremoved(_:)) Returns a new view with its inherited symbol image effects either removed or left unchanged.
- [SymbolEffectTransition](/documentation/swiftui/symboleffecttransition) Creates a transition that applies the Appear, Disappear, DrawOn or DrawOff symbol animation to symbol images within the inserted or removed view hierarchy.

## Setting symbol rendering modes

- [symbolRenderingMode(_:)](/documentation/swiftui/view/symbolrenderingmode(_:)) Sets the rendering mode for symbol images within this view.
- [symbolRenderingMode](/documentation/swiftui/environmentvalues/symbolrenderingmode) The current symbol rendering mode, or  denoting that the mode is picked automatically using the current image and foreground style as parameters.
- [SymbolRenderingMode](/documentation/swiftui/symbolrenderingmode) A symbol rendering mode.
- [SymbolColorRenderingMode](/documentation/swiftui/symbolcolorrenderingmode) A method of filling a layer in a symbol image.
- [SymbolVariableValueMode](/documentation/swiftui/symbolvariablevaluemode) A method of rendering the variable value of a symbol image.

## Rendering images from views

- [ImageRenderer](/documentation/swiftui/imagerenderer) An object that creates images from SwiftUI views.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [View styles](/documentation/swiftui/view-styles)
- [Animations](/documentation/swiftui/animations)
- [Text input and output](/documentation/swiftui/text-input-and-output)
- [Controls and indicators](/documentation/swiftui/controls-and-indicators)
- [Menus and commands](/documentation/swiftui/menus-and-commands)
- [Shapes](/documentation/swiftui/shapes)
- [Drawing and graphics](/documentation/swiftui/drawing-and-graphics)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
