---
title: ContainerBackgroundPlacement
description: The placement of a container background.
source: https://developer.apple.com/documentation/swiftui/containerbackgroundplacement
timestamp: 2025-10-29T00:13:03.967Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ContainerBackgroundPlacement

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The placement of a container background.

```swift
struct ContainerBackgroundPlacement
```

## Overview

This method controls where to place a background that you specify with the [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:)) or [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:)) modifier.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting placements

- [navigation](/documentation/swiftui/containerbackgroundplacement/navigation) A background placement inside a  or .
- [tabView](/documentation/swiftui/containerbackgroundplacement/tabview) A background placement inside a .
- [widget](/documentation/swiftui/containerbackgroundplacement/widget) The container background placement for a widget.

## Getting StoreKit placements

- [subscriptionStore](/documentation/swiftui/containerbackgroundplacement/subscriptionstore) An automatic placement within a subscription store view, based on the view’s context.
- [subscriptionStoreFullHeight](/documentation/swiftui/containerbackgroundplacement/subscriptionstorefullheight) A background placement that spans the full height of a subscription store view.
- [subscriptionStoreHeader](/documentation/swiftui/containerbackgroundplacement/subscriptionstoreheader) A background placement behind the marketing content of a subscription store view.

## Type Properties

- [navigationSplitView](/documentation/swiftui/containerbackgroundplacement/navigationsplitview) A background placement behind the content of a .
- [window](/documentation/swiftui/containerbackgroundplacement/window) A  background placement inside a  or 

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
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
