---
title: Previews in Xcode
description: Generate dynamic, interactive previews of your custom views.
source: https://developer.apple.com/documentation/swiftui/previews-in-xcode
timestamp: 2025-10-29T00:14:54.370Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Previews in Xcode

> Generate dynamic, interactive previews of your custom views.

## Overview

When you create a custom [View](/documentation/swiftui/view) with SwiftUI, Xcode can display a preview of the view’s content that stays up-to-date as you make changes to the view’s code. You use one of the preview macros — like [Preview(_:body:)](/documentation/swiftui/preview(_:body:)) — to tell Xcode what to display. Xcode shows the preview in a canvas beside your code.



Different preview macros enable different kinds of configuration. For example, you can add traits that affect the preview’s appearance using the [Preview(_:traits:_:body:)](/documentation/swiftui/preview(_:traits:_:body:)) macro or add custom viewpoints for the preview using the [Preview(_:traits:body:cameras:)](/documentation/swiftui/preview(_:traits:body:cameras:)) macro. You can also check how your view behaves inside a specific scene type. For example, in visionOS you can use the [Preview(_:immersionStyle:traits:body:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:)) macro to preview your view inside an [Immersive Space](/documentation/swiftui/immersivespace).

You typically rely on preview macros to create previews in your code. However, if you can’t get the behavior you need using a preview macro, you can use the [Preview Provider](/documentation/swiftui/previewprovider) protocol and its associated supporting types to define and configure a preview.

## Essentials

- [Previewing your app’s interface in Xcode](/documentation/Xcode/previewing-your-apps-interface-in-xcode) Iterate designs quickly and preview your apps’ displays across different Apple devices.

## Creating a preview

- [Preview(_:body:)](/documentation/swiftui/preview(_:body:)) Creates a preview of a SwiftUI view.
- [Preview(_:traits:_:body:)](/documentation/swiftui/preview(_:traits:_:body:)) Creates a preview of a SwiftUI view using the specified traits.
- [Preview(_:traits:body:cameras:)](/documentation/swiftui/preview(_:traits:body:cameras:)) Creates a preview of a SwiftUI view using the specified traits and custom viewpoints.

## Creating a preview in the context of a scene

- [Preview(_:immersionStyle:traits:body:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:)) Creates a preview of a SwiftUI view in an immersive space.
- [Preview(_:immersionStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:cameras:)) Creates a preview of a SwiftUI view in an immersive space with custom viewpoints.
- [Preview(_:windowStyle:traits:body:)](/documentation/swiftui/preview(_:windowstyle:traits:body:)) Creates a preview of a SwiftUI view in a window.
- [Preview(_:windowStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:windowstyle:traits:body:cameras:)) Creates a preview of a SwiftUI view in a window with custom viewpoints.

## Defining a preview

- [Previewable()](/documentation/swiftui/previewable()) Tag allowing a dynamic property to appear inline in a preview.
- [PreviewProvider](/documentation/swiftui/previewprovider) A type that produces view previews in Xcode.
- [PreviewPlatform](/documentation/swiftui/previewplatform) Platforms that can run the preview.
- [previewDisplayName(_:)](/documentation/swiftui/view/previewdisplayname(_:)) Sets a user visible name to show in the canvas for a preview.
- [PreviewModifier](/documentation/swiftui/previewmodifier) A type that defines an environment in which previews can appear.
- [PreviewModifierContent](/documentation/swiftui/previewmodifiercontent) The type-erased content of a preview.

## Customizing a preview

- [previewDevice(_:)](/documentation/swiftui/view/previewdevice(_:)) Overrides the device for a preview.
- [PreviewDevice](/documentation/swiftui/previewdevice) A simulator device that runs a preview.
- [previewLayout(_:)](/documentation/swiftui/view/previewlayout(_:)) Overrides the size of the container for the preview.
- [previewInterfaceOrientation(_:)](/documentation/swiftui/view/previewinterfaceorientation(_:)) Overrides the orientation of the preview.
- [InterfaceOrientation](/documentation/swiftui/interfaceorientation) The orientation of the interface from the user’s perspective.

## Setting a context

- [previewContext(_:)](/documentation/swiftui/view/previewcontext(_:)) Declares a context for the preview.
- [PreviewContext](/documentation/swiftui/previewcontext) A context type for use with a preview.
- [PreviewContextKey](/documentation/swiftui/previewcontextkey) A key type for a preview context.

## Building in debug mode

- [DebugReplaceableView](/documentation/swiftui/debugreplaceableview) Erases view opaque result types in debug builds.

## Tool support

- [Xcode library customization](/documentation/swiftui/xcode-library-customization)
- [Performance analysis](/documentation/swiftui/performance-analysis)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
