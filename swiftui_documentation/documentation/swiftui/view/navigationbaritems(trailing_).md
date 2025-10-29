---
title: navigationBarItems(trailing:)
description: Configures the navigation bar items for this view.
source: https://developer.apple.com/documentation/swiftui/view/navigationbaritems(trailing:)
timestamp: 2025-10-29T00:11:11.104Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationBarItems(trailing:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Configures the navigation bar items for this view.

```swift
nonisolated func navigationBarItems<T>(trailing: T) -> some View where T : View
```

## Parameters

**trailing**

A view shown on the trailing edge of the title.



## Discussion

Use `navigationBarItems(trailing:)` to add navigation bar items to the trailing edge of the navigation bar for this view. This modifier only takes effect when this view is inside of and visible within a [Navigation View](/documentation/swiftui/navigationview).

The example below adds buttons to the trailing edge of the button area of the navigation view:

```swift
struct FlavorView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Chocolate")
                Text("Vanilla")
                Text("Strawberry")
            }
            .navigationBarTitle(Text("Today‘s Flavors"))
            .navigationBarItems(trailing:
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
- [navigationBarItems(leading:)](/documentation/swiftui/view/navigationbaritems(leading:))
- [navigationBarItems(leading:trailing:)](/documentation/swiftui/view/navigationbaritems(leading:trailing:))
- [navigationBarHidden(_:)](/documentation/swiftui/view/navigationbarhidden(_:))
- [statusBar(hidden:)](/documentation/swiftui/view/statusbar(hidden:))
- [contextMenu(_:)](/documentation/swiftui/view/contextmenu(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
