---
title: navigationDestination(item:destination:)
description: Associates a destination view with a bound value for use within a navigation stack or navigation split view
source: https://developer.apple.com/documentation/swiftui/view/navigationdestination(item:destination:)
timestamp: 2025-10-29T00:14:47.769Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationDestination(item:destination:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Associates a destination view with a bound value for use within a navigation stack or navigation split view

```swift
nonisolated func navigationDestination<D, C>(item: Binding<Optional<D>>, @ViewBuilder destination: @escaping (D) -> C) -> some View where D : Hashable, C : View
```

## Parameters

**item**

A binding to the data presented, or `nil` if nothing is currently presented.



**destination**

A view builder that defines a view to display when `item` is not `nil`.



## Discussion

Add this view modifier to a view inside a [Navigation Stack](/documentation/swiftui/navigationstack) or [Navigation Split View](/documentation/swiftui/navigationsplitview) to describe the view that the stack displays when presenting a particular kind of data. Programmatically update the binding to display or remove the view. For example, you can replace the view showing in the detail column of a navigation split view:

```swift
@State private var colorShown: Color?

NavigationSplitView {
    List {
        Button("Mint") { colorShown = .mint }
        Button("Pink") { colorShown = .pink }
        Button("Teal") { colorShown = .teal }
    }
    .navigationDestination(item: $colorShown) { color in
        ColorDetail(color: color)
    }
} detail: {
    Text("Select a color")
}
```

When the person using the app taps on the Mint button, the mint color shows in the detail and `colorShown` gets the value `Color.mint`. You can reset the navigation split view to show the message “Select a color” by setting `colorShown` back to `nil`.

You can add more than one navigation destination modifier to the stack if it needs to present more than one kind of data.

Do not put a navigation destination modifier inside a “lazy” container, like [List](/documentation/swiftui/list) or [Lazy VStack](/documentation/swiftui/lazyvstack). These containers create child views only when needed to render on screen. Add the navigation destination modifier outside these containers so that the navigation split view can always see the destination.

## Stacking views in one column

- [NavigationStack](/documentation/swiftui/navigationstack)
- [NavigationPath](/documentation/swiftui/navigationpath)
- [navigationDestination(for:destination:)](/documentation/swiftui/view/navigationdestination(for:destination:))
- [navigationDestination(isPresented:destination:)](/documentation/swiftui/view/navigationdestination(ispresented:destination:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
