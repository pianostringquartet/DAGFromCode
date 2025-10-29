---
title: ScrollPosition
description: A type that defines the semantic position of where a scroll view is scrolled within its content.
source: https://developer.apple.com/documentation/swiftui/scrollposition
timestamp: 2025-10-29T00:12:59.791Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollPosition

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that defines the semantic position of where a scroll view is scrolled within its content.

```swift
struct ScrollPosition
```

## Overview

Use this type along with the `View/scrollPosition(_:)` modifier to control where a scroll view is positioned. You can use this type to scroll in a variety of ways:

- scroll to a view with a provided identity
- scroll to a concrete offset
- scroll to an edge

You can create a scroll position with a specified view identity type

```swift
@State private var position = ScrollPosition(idType: MyItem.ID.self)
```

SwiftUI will use that along with the views in the scroll view’s scroll target layout to programmatically scroll to those views and to update the [view ID](/documentation/swiftui/scrollposition/viewid) property as the user scrolls. Use the `View/scrollTargetLayout()` modifier to configure which layout contains your scroll targets.

When scrolling to a view with an identifier, SwiftUI will update the position with the value of the top-most view scrolled within the visible region of the scroll view.

In the following example, the position binding will update to reflect the top-most ItemView as the scroll view scrolls.

```swift
@Binding var items: [MyItem]
@State private var position: ScrollPosition
    = .init(idType: MyItem.ID.self)

ScrollView {
    LazyVStack {
        ForEach(items) { item in
            ItemView(item)
        }
    }
    .scrollTargetLayout()
}
.scrollPosition($scrolledID)
```

You can then query the currently scrolled id by using the [viewID(type:)](/documentation/swiftui/scrollposition/viewid(type:)).

```swift
let viewID: MyItem.ID = position.viewID(type: MyItem.ID.self)
```

While most use cases will use view identity based scrolling, you can also use the scroll position type to scroll to offsets or edges. For example, you can create a button that scrolls to the bottom of the scroll view by specifying an edge.

```swift
Button("Scroll to bottom") {
    position.scrollTo(edge: .bottom)
}
```

When configuring a scroll position, SwiftUI will attempt to keep that position stable. For an edge, that means keeping a top aligned scroll view scrolled to the top if the content size changes. For a point, SwiftUI won’t attempt to keep that exact offset scrolled when the content size changes nor will it update to a new offset when that changes.

For view identity positions, SwiftUI will attempt to keep the view with the identity specified in the provided binding visible when events occur that might cause it to be scrolled out of view by the system. Some examples of these include:

- The data backing the content of a scroll view is re-ordered.
- The size of the scroll view changes, like when a window is resized on macOS or during a rotation on iOS.
- The scroll view initially lays out it content defaulting to the top most view, but the binding has a different view’s identity.

You can provide an anchor to a view identity based position to:

- Influence which view the system chooses as the view whose identity value will update the providing binding as the scroll view scrolls.
- Control the alignment of the view when scrolling to a view when writing a new binding value.

In the example below, the bottom most view will be chosen to update the position binding with.

```swift
ScrollView {
    LazyVStack {
        ForEach(items) { item in
            ItemView(item)
        }
    }
    .scrollTargetLayout()
}
.scrollPosition($scrolledID, anchor: .bottom)
```

For example, providing a value of [bottom](/documentation/swiftui/unitpoint/bottom) will prefer to have the bottom-most view chosen and prefer to scroll to views aligned to the bottom.

If no anchor has been provided, SwiftUI will scroll the minimal amount when using the scroll position to programmatically scroll to a view.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(id:anchor:)](/documentation/swiftui/scrollposition/init(id:anchor:)) Creates a new scroll position to a view with a provided identity value.
- [init(idType:)](/documentation/swiftui/scrollposition/init(idtype:)) Creates a new automatic scroll position.
- [init(idType:edge:)](/documentation/swiftui/scrollposition/init(idtype:edge:)) Creates a new scroll position to be scrolled to the provided edge.
- [init(idType:point:)](/documentation/swiftui/scrollposition/init(idtype:point:)) Creates a new scroll position to be scrolled to the provided point.
- [init(idType:x:)](/documentation/swiftui/scrollposition/init(idtype:x:)) Creates a new scroll position to be scrolled to the provided y value.
- [init(idType:x:y:)](/documentation/swiftui/scrollposition/init(idtype:x:y:)) Creates a new scroll position to be scrolled to the provided x value.
- [init(idType:y:)](/documentation/swiftui/scrollposition/init(idtype:y:)) Creates a new scroll position to be scrolled to the provided y value.

## Instance Properties

- [edge](/documentation/swiftui/scrollposition/edge) The positioned edge of the scroll view if configured to be in that position.
- [isPositionedByUser](/documentation/swiftui/scrollposition/ispositionedbyuser) Whether the scroll view has been positioned by the user.
- [point](/documentation/swiftui/scrollposition/point) The positioned point of the scroll view if configured to be in that position.
- [viewID](/documentation/swiftui/scrollposition/viewid) The type-erased id of the view positioned in the scroll view if configured to be in that position or the user has scrolled past a view with an id of matching type.
- [x](/documentation/swiftui/scrollposition/x) The positioned x value of the scroll view if configured to be in that position.
- [y](/documentation/swiftui/scrollposition/y) The positioned y value of the scroll view if configured to be in that position.

## Instance Methods

- [scrollTo(edge:)](/documentation/swiftui/scrollposition/scrollto(edge:)) Scrolls the position of the scroll view to the edge you provide.
- [scrollTo(id:anchor:)](/documentation/swiftui/scrollposition/scrollto(id:anchor:)) Scrolls the position of the scroll view to a view with a identity value and anchor you provide.
- [scrollTo(point:)](/documentation/swiftui/scrollposition/scrollto(point:)) Scrolls the position of the scroll view to the point you provide.
- [scrollTo(x:)](/documentation/swiftui/scrollposition/scrollto(x:)) Scrolls the position of the scroll view to the x value you provide.
- [scrollTo(x:y:)](/documentation/swiftui/scrollposition/scrollto(x:y:)) Scrolls the position of the scroll view to the x and y value you provide.
- [scrollTo(y:)](/documentation/swiftui/scrollposition/scrollto(y:)) Scrolls the position of the scroll view to the y value you provide.
- [viewID(type:)](/documentation/swiftui/scrollposition/viewid(type:)) The id of the view positioned in the scroll view if configured to be in that position or the user has scrolled past a view with an id of matching type.

## Managing scroll position

- [scrollPosition(_:anchor:)](/documentation/swiftui/view/scrollposition(_:anchor:))
- [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:))
- [defaultScrollAnchor(_:)](/documentation/swiftui/view/defaultscrollanchor(_:))
- [defaultScrollAnchor(_:for:)](/documentation/swiftui/view/defaultscrollanchor(_:for:))
- [ScrollAnchorRole](/documentation/swiftui/scrollanchorrole)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
