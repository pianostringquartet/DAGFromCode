---
title: contentShape(_:_:eoFill:)
description: Sets the content shape for this view.
source: https://developer.apple.com/documentation/swiftui/view/contentshape(_:_:eofill:)
timestamp: 2025-10-29T00:10:10.785Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# contentShape(_:_:eoFill:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the content shape for this view.

```swift
nonisolated func contentShape<S>(_ kind: ContentShapeKinds, _ shape: S, eoFill: Bool = false) -> some View where S : Shape
```

## Parameters

**kind**

The kinds to apply to this content shape.



**shape**

The shape to use.



**eoFill**

A Boolean that indicates whether the shape is interpreted with the even-odd winding number rule.



## Return Value

A view that uses the given shape for the specified kind.

## Discussion

The content shape has a variety of uses. You can control the kind of the content shape by specifying one in `kind`. The following example sets the focus ring shape of the view, without affecting its shape for hit-testing:

```swift
MyFocusableView()
    .contentShape(.focusEffect, Circle())
```

You can apply multiple kinds of content shapes to the same view. For example, apply a [interaction](/documentation/swiftui/contentshapekinds/interaction) shape and [focus Effect](/documentation/swiftui/contentshapekinds/focuseffect) shape together to set both the hit-testing shape and focus ring shape on a view.

## Context Menu & Drag Previews

You can control the preview shown by the system for context menus or drags using the relevant content shape kind, like [drag Preview](/documentation/swiftui/contentshapekinds/dragpreview) and [context Menu Preview](/documentation/swiftui/contentshapekinds/contextmenupreview).

The following example creates a [VStack](/documentation/swiftui/vstack) of an [Image](/documentation/swiftui/image) and [Text](/documentation/swiftui/text) that has a context menu with a custom content shape:

```swift
VStack {
    Image("turtlerock")
        .contentShape(.contextMenuPreview,
                      RoundedRectangle(cornerRadius: 10))
    Text("Turtle Rock")
}
.contextMenu {
    Button {
        // Add this item to a list of favorites.
    } label: {
        Label("Add to Favorites", systemImage: "heart")
    }
}
```

When someone activates the context menu with an action like touch and hold in iOS or iPadOS, the system uses the [Image](/documentation/swiftui/image) as the preview for the context menu, applying the requested corner radius.

The content shape also supports applying modifiers such as [inset(by:)](/documentation/swiftui/insettableshape/inset(by:)) to add padding.

> [!NOTE]
> Similar to [focus Effect](/documentation/swiftui/contentshapekinds/focuseffect), the [context Menu Preview](/documentation/swiftui/contentshapekinds/contextmenupreview) and [drag Preview](/documentation/swiftui/contentshapekinds/dragpreview) content shapes do not impact the hit-testing shape. In this example, someone can touch and hold anywhere on the [VStack](/documentation/swiftui/vstack) to activate the menu. If you only want the [Image](/documentation/swiftui/image) to activate the menu, apply [contextMenu(menuItems:)](/documentation/swiftui/view/contextmenu(menuitems:)) to the [Image](/documentation/swiftui/image) instead.

## Controlling hit testing

- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [contentShape(_:eoFill:)](/documentation/swiftui/view/contentshape(_:eofill:))
- [ContentShapeKinds](/documentation/swiftui/contentshapekinds)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
