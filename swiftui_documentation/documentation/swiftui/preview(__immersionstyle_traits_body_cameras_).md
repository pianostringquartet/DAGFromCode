---
title: Preview(_:immersionStyle:traits:body:cameras:)
description: Creates a preview of a SwiftUI view in an immersive space with custom viewpoints.
source: https://developer.apple.com/documentation/swiftui/preview(_:immersionstyle:traits:body:cameras:)
timestamp: 2025-10-29T00:15:29.229Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Preview(_:immersionStyle:traits:body:cameras:)

**Available on:** visionOS 1.0+

> Creates a preview of a SwiftUI view in an immersive space with custom viewpoints.

```swift
@freestanding(declaration) macro Preview<Style>(_ name: String? = nil, immersionStyle: Style, traits: PreviewTrait<Preview.ViewTraits>..., @ViewBuilder body: @escaping @MainActor () -> any View, @PreviewCameraBuilder cameras: () -> [PreviewCamera]) where Style : ImmersionStyle
```

## Parameters

**name**

An optional display name for the preview. If you don’t specify a name, the canvas labels the preview using the line number where the preview appears in source.



**immersionStyle**

The [Immersion Style](/documentation/swiftui/immersionstyle) to use for the preview. Use this input to display the view as if it appears in an immersive space that has the specified style.



**traits**

An optional list of [Preview Trait](/documentation/DeveloperToolsSupport/PreviewTrait) instances that customize the appearance of the preview.



**body**

A [View Builder](/documentation/swiftui/viewbuilder) that produces a SwiftUI view to preview. You typically specify one of your app’s custom views and optionally any inputs, model data, modifiers, and enclosing views that the custom view needs for normal operation.



**cameras**

One or more preview cameras that indicate the custom, fixed viewpoints that you want to be able to view the preview from. The first of these replaces the front viewpoint as the default.



## Overview

This preview macro behaves like [Preview(_:immersionStyle:traits:body:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:)) combined with [Preview(_:traits:body:cameras:)](/documentation/swiftui/preview(_:traits:body:cameras:)): it enables you to define an immersive space scene context for the view, and also to define custom, fixed viewpoints for the preview:

```swift
#Preview("Mixed immersive space", immersionStyle: .mixed) {
   ContentView()
} cameras: {
   PreviewCamera(from: .front)
   PreviewCamera(from: .top, zoom: 2)
   PreviewCamera(from: .leading, zoom: 0.5, name: "close up")
}
```

See those other preview macros for more information about using scenes and cameras in your preview. If you want to preview in a window rather than an immersive space, use [Preview(_:windowStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:windowstyle:traits:body:cameras:)).

## Creating a preview in the context of a scene

- [Preview(_:immersionStyle:traits:body:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:))
- [Preview(_:windowStyle:traits:body:)](/documentation/swiftui/preview(_:windowstyle:traits:body:))
- [Preview(_:windowStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:windowstyle:traits:body:cameras:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
