---
title: WidgetBundleBuilder
description: A custom attribute that constructs a widget bundle’s body.
source: https://developer.apple.com/documentation/swiftui/widgetbundlebuilder
timestamp: 2025-10-29T00:13:31.357Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WidgetBundleBuilder

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> A custom attribute that constructs a widget bundle’s body.

```swift
@resultBuilder struct WidgetBundleBuilder
```

## Overview

Use the `@WidgetBundleBuilder` attribute to group multiple widgets listed in the [body-swift.property](/documentation/swiftui/widgetbundle/body-swift.property) property of a widget bundle. For example, the following code defines a widget bundle that consists of two widgets.

```swift
@main
struct GameWidgets: WidgetBundle {
   @WidgetBundleBuilder
   var body: some Widget {
       GameStatusWidget()
       CharacterDetailWidget()
   }
}
```

## Bundling widgets

- [buildBlock()](/documentation/swiftui/widgetbundlebuilder/buildblock()) Builds an empty Widget from a block containing no statements, .
- [buildBlock(_:)](/documentation/swiftui/widgetbundlebuilder/buildblock(_:)) Builds a single Widget written as a child view (e..g, ) through unmodified.
- [buildExpression(_:)](/documentation/swiftui/widgetbundlebuilder/buildexpression(_:)) Builds an expression within the builder.
- [buildLimitedAvailability(_:)](/documentation/swiftui/widgetbundlebuilder/buildlimitedavailability(_:)) Builds an availability check within the builder
- [buildOptional(_:)](/documentation/swiftui/widgetbundlebuilder/buildoptional(_:)) Produces an optional widget for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.

## Implementing a widget bundle

- [body](/documentation/swiftui/widgetbundle/body-swift.property)
- [Body](/documentation/swiftui/widgetbundle/body-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
