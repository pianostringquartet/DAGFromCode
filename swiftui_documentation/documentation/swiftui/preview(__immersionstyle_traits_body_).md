---
title: Preview(_:immersionStyle:traits:body:)
description: Creates a preview of a SwiftUI view in an immersive space.
source: https://developer.apple.com/documentation/swiftui/preview(_:immersionstyle:traits:body:)
timestamp: 2025-10-29T00:14:25.049Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Preview(_:immersionStyle:traits:body:)

**Available on:** visionOS 1.0+

> Creates a preview of a SwiftUI view in an immersive space.

```swift
@freestanding(declaration) macro Preview<Style>(_ name: String? = nil, immersionStyle: Style, traits: PreviewTrait<Preview.ViewTraits>..., @ViewBuilder body: @escaping @MainActor () -> any View) where Style : ImmersionStyle
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



## Overview

This preview macro behaves like [Preview(_:traits:_:body:)](/documentation/swiftui/preview(_:traits:_:body:)), except that it also enables you to define a scene context for the view. Specifically, it places the view in an immersive space with the specified immersion style, like the [mixed](/documentation/swiftui/immersionstyle/mixed) style:

```swift
#Preview("Mixed immersive space", immersionStyle: .mixed) {
   ContentView()
}
```

Use this preview macro when the view needs scene context to behave as it would during normal operation of your app.

Other preview macros provide different customization options. For example, if you want to see how the view appears in a window rather than an immersive space, you can use [Preview(_:windowStyle:traits:body:)](/documentation/swiftui/preview(_:windowstyle:traits:body:)). If you want to add custom, fixed viewpoints to an immersive space preview, use [Preview(_:immersionStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:cameras:)).

## Creating a preview in the context of a scene

- [Preview(_:immersionStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:cameras:))
- [Preview(_:windowStyle:traits:body:)](/documentation/swiftui/preview(_:windowstyle:traits:body:))
- [Preview(_:windowStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:windowstyle:traits:body:cameras:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
