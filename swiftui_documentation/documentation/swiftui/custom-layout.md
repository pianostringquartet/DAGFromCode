---
title: Custom layout
description: Place views in custom arrangements and create animated transitions between layout types.
source: https://developer.apple.com/documentation/swiftui/custom-layout
timestamp: 2025-10-29T00:12:50.022Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Custom layout

> Place views in custom arrangements and create animated transitions between layout types.

## Overview

You can create complex view layouts using the built-in layout containers and layout view modifiers that SwiftUI provides. However, if you need behavior that you can’t achieve with the built-in layout tools, create a custom layout container type using the [Layout](/documentation/swiftui/layout) protocol. A container that you define asks for the sizes of all its subviews, and then indicates where to place the subviews within its own bounds.



You can also create animated transitions among layout types that conform to the [Layout](/documentation/swiftui/layout) procotol, including both built-in and custom layouts.

For design guidance, see [layout](/design/Human-Interface-Guidelines/layout) in the Human Interface Guidelines.

## Creating a custom layout container

- [Composing custom layouts with SwiftUI](/documentation/swiftui/composing-custom-layouts-with-swiftui) Arrange views in your app’s interface using layout tools that SwiftUI provides.
- [Layout](/documentation/swiftui/layout) A type that defines the geometry of a collection of views.
- [LayoutSubview](/documentation/swiftui/layoutsubview) A proxy that represents one subview of a layout.
- [LayoutSubviews](/documentation/swiftui/layoutsubviews) A collection of proxy values that represent the subviews of a layout view.

## Configuring a custom layout

- [LayoutProperties](/documentation/swiftui/layoutproperties) Layout-specific properties of a layout container.
- [ProposedViewSize](/documentation/swiftui/proposedviewsize) A proposal for the size of a view.
- [ViewSpacing](/documentation/swiftui/viewspacing) A collection of the geometric spacing preferences of a view.

## Associating values with views in a custom layout

- [layoutValue(key:value:)](/documentation/swiftui/view/layoutvalue(key:value:)) Associates a value with a custom layout property.
- [LayoutValueKey](/documentation/swiftui/layoutvaluekey) A key for accessing a layout value of a layout container’s subviews.

## Transitioning between layout types

- [AnyLayout](/documentation/swiftui/anylayout) A type-erased instance of the layout protocol.
- [HStackLayout](/documentation/swiftui/hstacklayout) A horizontal container that you can use in conditional layouts.
- [VStackLayout](/documentation/swiftui/vstacklayout) A vertical container that you can use in conditional layouts.
- [ZStackLayout](/documentation/swiftui/zstacklayout) An overlaying container that you can use in conditional layouts.
- [GridLayout](/documentation/swiftui/gridlayout) A grid that you can use in conditional layouts.

## View layout

- [Layout fundamentals](/documentation/swiftui/layout-fundamentals)
- [Layout adjustments](/documentation/swiftui/layout-adjustments)
- [Lists](/documentation/swiftui/lists)
- [Tables](/documentation/swiftui/tables)
- [View groupings](/documentation/swiftui/view-groupings)
- [Scroll views](/documentation/swiftui/scroll-views)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
