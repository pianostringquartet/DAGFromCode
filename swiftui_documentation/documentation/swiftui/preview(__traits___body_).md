---
title: Preview(_:traits:_:body:)
description: Creates a preview of a SwiftUI view using the specified traits.
source: https://developer.apple.com/documentation/swiftui/preview(_:traits:_:body:)
timestamp: 2025-10-29T00:09:32.389Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Preview(_:traits:_:body:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a preview of a SwiftUI view using the specified traits.

```swift
@freestanding(declaration) macro Preview(_ name: String? = nil, traits: PreviewTrait<Preview.ViewTraits>, _ additionalTraits: PreviewTrait<Preview.ViewTraits>..., @ViewBuilder body: @escaping @MainActor () -> any View)
```

## Parameters

**name**

An optional display name for the preview. If you don’t specify a name, the canvas labels the preview using the line number where the preview appears in source.



**traits**

A [Preview Trait](/documentation/DeveloperToolsSupport/PreviewTrait) instance that customizes the appearance of the preview.



**additionalTraits**

Optional additional traits that further customize the preview.



**body**

A [View Builder](/documentation/swiftui/viewbuilder) that produces a SwiftUI view to preview. You typically specify one of your app’s custom views and optionally any inputs, model data, modifiers, and enclosing views that the custom view needs for normal operation.



## Overview

This macro behaves like [Preview(_:body:)](/documentation/swiftui/preview(_:body:)) except that it also enables you to customize the appearance of the preview by adding one or more traits, which are instances of [Preview Trait](/documentation/DeveloperToolsSupport/PreviewTrait). For example, you can display a preview at a fixed size using the [fixedLayout(width:height:)](/documentation/DeveloperToolsSupport/PreviewTrait/fixedLayout(width:height:)) trait:

```swift
#Preview(
    "Content",
    traits: .fixedLayout(width: 100, height: 100)
) {
    ContentView()
}
```

The macro ignores traits that don’t apply to the current context. For example, the [portrait](/documentation/DeveloperToolsSupport/PreviewTrait/portrait) trait has no impact on a visionOS preview.

Other preview macros provide different customization options. For example, if you want to specify a custom viewpoint for the preview, use [Preview(_:traits:body:cameras:)](/documentation/swiftui/preview(_:traits:body:cameras:)).

## Creating a preview

- [Preview(_:body:)](/documentation/swiftui/preview(_:body:))
- [Preview(_:traits:body:cameras:)](/documentation/swiftui/preview(_:traits:body:cameras:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
