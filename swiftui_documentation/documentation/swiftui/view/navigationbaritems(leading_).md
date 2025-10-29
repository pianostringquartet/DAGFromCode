---
title: navigationBarItems(leading:)
description: Sets the navigation bar items for this view.
source: https://developer.apple.com/documentation/swiftui/view/navigationbaritems(leading:)
timestamp: 2025-10-29T00:12:07.684Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationBarItems(leading:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Sets the navigation bar items for this view.

```swift
nonisolated func navigationBarItems<L>(leading: L) -> some View where L : View
```

## Parameters

**leading**

A view that appears on the leading edge of the title.



## Discussion

Use `navigationBarItems(leading:)` to add navigation bar items to the leading edge of the navigation bar for this view.

This modifier only takes effect when this view is inside of and visible within a [Navigation View](/documentation/swiftui/navigationview).

On iOS 14 and later, the leading item supplements a visible back button, instead of replacing it, by default. To hide the back button, use [navigationBarBackButtonHidden(_:)](/documentation/swiftui/view/navigationbarbackbuttonhidden(_:)).

The example below adds buttons to the leading edge of the button area of the navigation view:

```swift
struct FlavorView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Chocolate")
                Text("Vanilla")
                Text("Strawberry")
            }
            .navigationBarTitle(Text("Today's Flavors"))
            .navigationBarItems(leading:
                HStack {
                    Button("Hours") {
                        print("Hours tapped!")
                    }

                    Button("Help") {
                        print("Help tapped!")
                    }
                }
            )
        }
    }
}
```

## Auxiliary view modifiers

- [navigationBarTitle(_:)](/documentation/swiftui/view/navigationbartitle(_:))
- [navigationBarTitle(_:displayMode:)](/documentation/swiftui/view/navigationbartitle(_:displaymode:))
- [navigationBarItems(leading:trailing:)](/documentation/swiftui/view/navigationbaritems(leading:trailing:))
- [navigationBarItems(trailing:)](/documentation/swiftui/view/navigationbaritems(trailing:))
- [navigationBarHidden(_:)](/documentation/swiftui/view/navigationbarhidden(_:))
- [statusBar(hidden:)](/documentation/swiftui/view/statusbar(hidden:))
- [contextMenu(_:)](/documentation/swiftui/view/contextmenu(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
