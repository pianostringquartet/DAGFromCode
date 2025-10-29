---
title: navigationBarTitle(_:displayMode:)
description: Sets the title and display mode in the navigation bar for this view.
source: https://developer.apple.com/documentation/swiftui/view/navigationbartitle(_:displaymode:)
timestamp: 2025-10-29T00:11:37.184Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationBarTitle(_:displayMode:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, visionOS 1.0+

> Sets the title and display mode in the navigation bar for this view.

```swift
nonisolated func navigationBarTitle(_ title: Text, displayMode: NavigationBarItem.TitleDisplayMode) -> some View
```

## Parameters

**title**

A title for this view to display in the navigation bar.



**displayMode**

The style to use for displaying the navigation bar title.



## Discussion

Use `navigationBarTitle(_:displayMode:)` to set the title of the navigation bar for this view and specify a display mode for the title from one of the [Title Display Mode](/documentation/swiftui/navigationbaritem/titledisplaymode) styles. This modifier only takes effect when this view is inside of and visible within a [Navigation View](/documentation/swiftui/navigationview).

In the example below, text for the navigation bar title is provided using a [Text](/documentation/swiftui/text) view. The navigation bar title’s [Title Display Mode](/documentation/swiftui/navigationbaritem/titledisplaymode) is set to `.inline` which places the navigation bar title in the bounds of the navigation bar.

```swift
struct FlavorView: View {
   let items = ["Chocolate", "Vanilla", "Strawberry", "Mint Chip",
                "Pistachio"]
   var body: some View {
        NavigationView {
            List(items, id: \.self) {
                Text($0)
            }
            .navigationBarTitle(Text("Today's Flavors", displayMode: .inline))
        }
    }
}
```

## Auxiliary view modifiers

- [navigationBarTitle(_:)](/documentation/swiftui/view/navigationbartitle(_:))
- [navigationBarItems(leading:)](/documentation/swiftui/view/navigationbaritems(leading:))
- [navigationBarItems(leading:trailing:)](/documentation/swiftui/view/navigationbaritems(leading:trailing:))
- [navigationBarItems(trailing:)](/documentation/swiftui/view/navigationbaritems(trailing:))
- [navigationBarHidden(_:)](/documentation/swiftui/view/navigationbarhidden(_:))
- [statusBar(hidden:)](/documentation/swiftui/view/statusbar(hidden:))
- [contextMenu(_:)](/documentation/swiftui/view/contextmenu(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
