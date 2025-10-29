---
title: navigationDestination(for:destination:)
description: Associates a destination view with a presented data type for use within a navigation stack.
source: https://developer.apple.com/documentation/swiftui/view/navigationdestination(for:destination:)
timestamp: 2025-10-29T00:12:43.611Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationDestination(for:destination:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Associates a destination view with a presented data type for use within a navigation stack.

```swift
nonisolated func navigationDestination<D, C>(for data: D.Type, @ViewBuilder destination: @escaping (D) -> C) -> some View where D : Hashable, C : View
```

## Parameters

**data**

The type of data that this destination matches.



**destination**

A view builder that defines a view to display when the stack’s navigation state contains a value of type `data`. The closure takes one argument, which is the value of the data to present.



## Discussion

Add this view modifier to a view inside a [Navigation Stack](/documentation/swiftui/navigationstack) to describe the view that the stack displays when presenting a particular kind of data. Use a [Navigation Link](/documentation/swiftui/navigationlink) to present the data. For example, you can present a `ColorDetail` view for each presentation of a [Color](/documentation/swiftui/color) instance:

```swift
NavigationStack {
    List {
        NavigationLink("Mint", value: Color.mint)
        NavigationLink("Pink", value: Color.pink)
        NavigationLink("Teal", value: Color.teal)
    }
    .navigationDestination(for: Color.self) { color in
        ColorDetail(color: color)
    }
    .navigationTitle("Colors")
}
```

You can add more than one navigation destination modifier to the stack if it needs to present more than one kind of data.

Do not put a navigation destination modifier inside a “lazy” container, like [List](/documentation/swiftui/list) or [Lazy VStack](/documentation/swiftui/lazyvstack). These containers create child views only when needed to render on screen. Add the navigation destination modifier outside these containers so that the navigation stack can always see the destination.

## Stacking views in one column

- [NavigationStack](/documentation/swiftui/navigationstack)
- [NavigationPath](/documentation/swiftui/navigationpath)
- [navigationDestination(isPresented:destination:)](/documentation/swiftui/view/navigationdestination(ispresented:destination:))
- [navigationDestination(item:destination:)](/documentation/swiftui/view/navigationdestination(item:destination:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
