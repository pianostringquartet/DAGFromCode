---
title: body
description: Declares the group of widgets that an app supports.
source: https://developer.apple.com/documentation/swiftui/widgetbundle/body-swift.property
timestamp: 2025-10-29T00:13:12.360Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetbundle](/documentation/swiftui/widgetbundle)

**Instance Property**

# body

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> Declares the group of widgets that an app supports.

```swift
@WidgetBundleBuilder @MainActor @preconcurrency var body: Self.Body { get }
```

## Discussion

The order that the widgets appear in this property determines the order they are shown to the user when adding a widget. The following example shows how to use a widget bundle builder to define a body showing a game status widget first and a character detail widget second:

```swift
@main
struct GameWidgets: WidgetBundle {
   var body: some Widget {
       GameStatusWidget()
       CharacterDetailWidget()
   }
}
```

## Implementing a widget bundle

- [Body](/documentation/swiftui/widgetbundle/body-swift.associatedtype)
- [WidgetBundleBuilder](/documentation/swiftui/widgetbundlebuilder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
