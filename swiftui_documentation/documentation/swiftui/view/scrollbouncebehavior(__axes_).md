---
title: scrollBounceBehavior(_:axes:)
description: Configures the bounce behavior of scrollable views along the specified axis.
source: https://developer.apple.com/documentation/swiftui/view/scrollbouncebehavior(_:axes:)
timestamp: 2025-10-29T00:15:27.462Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollBounceBehavior(_:axes:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Configures the bounce behavior of scrollable views along the specified axis.

```swift
nonisolated func scrollBounceBehavior(_ behavior: ScrollBounceBehavior, axes: Axis.Set = [.vertical]) -> some View
```

## Parameters

**behavior**

The bounce behavior to apply to any scrollable views within the configured view. Use one of the [Scroll Bounce Behavior](/documentation/swiftui/scrollbouncebehavior) values.



**axes**

The set of axes to apply `behavior` to. The default is [vertical](/documentation/swiftui/axis/vertical).



## Return Value

A view that’s configured with the specified scroll bounce behavior.

## Discussion

Use this modifier to indicate whether scrollable views bounce when people scroll to the end of the view’s content, taking into account the relative sizes of the view and its content. For example, the following [Scroll View](/documentation/swiftui/scrollview) only enables bounce behavior if its content is large enough to require scrolling:

```swift
ScrollView {
    Text("Small")
    Text("Content")
}
.scrollBounceBehavior(.basedOnSize)
```

The modifier passes the scroll bounce mode through the [Environment](/documentation/swiftui/environment), which means that the mode affects any scrollable views in the modified view hierarchy. Provide an axis to the modifier to constrain the kinds of scrollable views that the mode affects. For example, all the scroll views in the following example can access the mode value, but only the two nested scroll views are affected, because only they use horizontal scrolling:

```swift
ScrollView { // Defaults to vertical scrolling.
    ScrollView(.horizontal) {
        ShelfContent()
    }
    ScrollView(.horizontal) {
        ShelfContent()
    }
}
.scrollBounceBehavior(.basedOnSize, axes: .horizontal)
```

You can use this modifier to configure any kind of scrollable view, including [Scroll View](/documentation/swiftui/scrollview), [List](/documentation/swiftui/list), [Table](/documentation/swiftui/table), and [Text Editor](/documentation/swiftui/texteditor):

```swift
List {
    Text("Hello")
    Text("World")
}
.scrollBounceBehavior(.basedOnSize)
```

## Configuring scroll bounce behavior

- [horizontalScrollBounceBehavior](/documentation/swiftui/environmentvalues/horizontalscrollbouncebehavior)
- [verticalScrollBounceBehavior](/documentation/swiftui/environmentvalues/verticalscrollbouncebehavior)
- [ScrollBounceBehavior](/documentation/swiftui/scrollbouncebehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
