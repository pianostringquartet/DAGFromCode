---
title: CompositorContentBuilder
description: A result builder for composing a collection of  elements.
source: https://developer.apple.com/documentation/swiftui/compositorcontentbuilder
timestamp: 2025-10-29T00:14:02.736Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# CompositorContentBuilder

**Available on:** macOS 26.0+, visionOS 26.0+

> A result builder for composing a collection of  elements.

```swift
@resultBuilder struct CompositorContentBuilder
```

## Structures

- [CompositorContentBuilder.Content](/documentation/swiftui/compositorcontentbuilder/content) A representation of the content of a compositor content builder.

## Type Methods

- [buildBlock(_:)](/documentation/swiftui/compositorcontentbuilder/buildblock(_:))
- [buildEither(first:)](/documentation/swiftui/compositorcontentbuilder/buildeither(first:)) Produces content for a conditional statement in a multi-statement closure when the condition is true.
- [buildEither(second:)](/documentation/swiftui/compositorcontentbuilder/buildeither(second:)) Produces content for a conditional statement in a multi-statement closure when the condition is false.
- [buildExpression(_:)](/documentation/swiftui/compositorcontentbuilder/buildexpression(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/compositorcontentbuilder/buildlimitedavailability(_:)) Processes scene content for a conditional compiler-control statement that performs an availability check.

## Compositing views

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:))
- [compositingGroup()](/documentation/swiftui/view/compositinggroup())
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:))
- [BlendMode](/documentation/swiftui/blendmode)
- [ColorRenderingMode](/documentation/swiftui/colorrenderingmode)
- [CompositorContent](/documentation/swiftui/compositorcontent)
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
