---
title: navigationDestination(isPresented:destination:)
description: Associates a destination view with a binding that can be used to push the view onto a .
source: https://developer.apple.com/documentation/swiftui/view/navigationdestination(ispresented:destination:)
timestamp: 2025-10-29T00:11:36.320Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationDestination(isPresented:destination:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Associates a destination view with a binding that can be used to push the view onto a .

```swift
nonisolated func navigationDestination<V>(isPresented: Binding<Bool>, @ViewBuilder destination: () -> V) -> some View where V : View
```

## Parameters

**isPresented**

A binding to a Boolean value that indicates whether `destination` is currently presented.



**destination**

A view to present.



## Discussion

In general, favor binding a path to a navigation stack for programmatic navigation. Add this view modifier to a view inside a [Navigation Stack](/documentation/swiftui/navigationstack) to programmatically push a single view onto the stack. This is useful for building components that can push an associated view. For example, you can present a `ColorDetail` view for a particular color:

```swift
@State private var showDetails = false
var favoriteColor: Color

NavigationStack {
    VStack {
        Circle()
            .fill(favoriteColor)
        Button("Show details") {
            showDetails = true
        }
    }
    .navigationDestination(isPresented: $showDetails) {
        ColorDetail(color: favoriteColor)
    }
    .navigationTitle("My Favorite Color")
}
```

Do not put a navigation destination modifier inside a “lazy” container, like [List](/documentation/swiftui/list) or [Lazy VStack](/documentation/swiftui/lazyvstack). These containers create child views only when needed to render on screen. Add the navigation destination modifier outside these containers so that the navigation stack can always see the destination.

## Stacking views in one column

- [NavigationStack](/documentation/swiftui/navigationstack)
- [NavigationPath](/documentation/swiftui/navigationpath)
- [navigationDestination(for:destination:)](/documentation/swiftui/view/navigationdestination(for:destination:))
- [navigationDestination(item:destination:)](/documentation/swiftui/view/navigationdestination(item:destination:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
