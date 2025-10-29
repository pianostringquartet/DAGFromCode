---
title: Preview(_:windowStyle:traits:body:)
description: Creates a preview of a SwiftUI view in a window.
source: https://developer.apple.com/documentation/swiftui/preview(_:windowstyle:traits:body:)
timestamp: 2025-10-29T00:09:18.276Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Preview(_:windowStyle:traits:body:)

**Available on:** visionOS 1.0+

> Creates a preview of a SwiftUI view in a window.

```swift
@freestanding(declaration) macro Preview<Style>(_ name: String? = nil, windowStyle: Style, traits: PreviewTrait<Preview.ViewTraits>..., @ViewBuilder body: @escaping @MainActor () -> any View) where Style : WindowStyle
```

## Parameters

**name**

An optional display name for the preview. If you don’t specify a name, the canvas labels the preview using the line number where the preview appears in source.



**windowStyle**

The [Window Style](/documentation/swiftui/windowstyle) to use for the preview. Use this input to display the view as if it appears in a window that has the specified style.



**traits**

An optional list of [Preview Trait](/documentation/DeveloperToolsSupport/PreviewTrait) instances that customize the appearance of the preview.



**body**

A [View Builder](/documentation/swiftui/viewbuilder) that produces a SwiftUI view to preview. You typically specify one of your app’s custom views and optionally any inputs, model data, modifiers, and enclosing views that the custom view needs for normal operation.



## Overview

This preview macro behaves like [Preview(_:traits:_:body:)](/documentation/swiftui/preview(_:traits:_:body:)), except that it also enables you to define a scene context for the view. Specifically, it places the view in a window with the specified window style, like the [volumetric](/documentation/swiftui/windowstyle/volumetric) style:

```swift
#Preview("Volume", windowStyle: .volumetric) {
   ContentView()
}
```

Use this preview macro when the view needs scene context to behave as it would during normal operation of your app.

Other preview macros provide different customization options. For example, if you want to see how the view appears in an immersive space rather than a window, you can use [Preview(_:immersionStyle:traits:body:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:)). If you want to add custom, fixed viewpoints to a window-based preview, use [Preview(_:windowStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:windowstyle:traits:body:cameras:)).

## Creating a preview in the context of a scene

- [Preview(_:immersionStyle:traits:body:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:))
- [Preview(_:immersionStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:immersionstyle:traits:body:cameras:))
- [Preview(_:windowStyle:traits:body:cameras:)](/documentation/swiftui/preview(_:windowstyle:traits:body:cameras:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
