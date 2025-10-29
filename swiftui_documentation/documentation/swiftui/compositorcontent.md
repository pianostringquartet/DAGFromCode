---
title: CompositorContent
source: https://developer.apple.com/documentation/swiftui/compositorcontent
timestamp: 2025-10-29T00:14:04.357Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# CompositorContent

**Available on:** macOS 26.0+, visionOS 26.0+

```swift
@MainActor protocol CompositorContent
```

## Conforming Types

- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)
- [CompositorContentBuilder.Content](/documentation/swiftui/compositorcontentbuilder/content)

## Associated Types

- [Body](/documentation/swiftui/compositorcontent/body-swift.associatedtype)

## Instance Properties

- [body](/documentation/swiftui/compositorcontent/body-swift.property)

## Instance Methods

- [contentCaptureProtected(_:)](/documentation/swiftui/compositorcontent/contentcaptureprotected(_:)) Marks the view as a view that activates content protection during scene capture events, such as screenshots, screen recordings, screensharing, etc.
- [onAppear(perform:)](/documentation/swiftui/compositorcontent/onappear(perform:)) Adds an action to perform before this content appears.
- [onChange(of:initial:_:)](/documentation/swiftui/compositorcontent/onchange(of:initial:_:))
- [onDisappear(perform:)](/documentation/swiftui/compositorcontent/ondisappear(perform:)) Adds an action to perform after this content disappears.
- [onImmersionChange(initial:_:)](/documentation/swiftui/compositorcontent/onimmersionchange(initial:_:)) Performs an action when the immersion state of your app changes.
- [onWorldRecenter(action:)](/documentation/swiftui/compositorcontent/onworldrecenter(action:)) Adds an action to perform when recentering the view with the digital crown.
- [persistentSystemOverlays(_:)](/documentation/swiftui/compositorcontent/persistentsystemoverlays(_:)) Sets the preferred visibility of the non-transient system views overlaying the app.
- [preferredSurroundingsEffect(_:)](/documentation/swiftui/compositorcontent/preferredsurroundingseffect(_:)) Applies an effect to passthrough video.
- [upperLimbVisibility(_:)](/documentation/swiftui/compositorcontent/upperlimbvisibility(_:)) Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.

## Compositing views

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:))
- [compositingGroup()](/documentation/swiftui/view/compositinggroup())
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:))
- [BlendMode](/documentation/swiftui/blendmode)
- [ColorRenderingMode](/documentation/swiftui/colorrenderingmode)
- [CompositorContentBuilder](/documentation/swiftui/compositorcontentbuilder)
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
