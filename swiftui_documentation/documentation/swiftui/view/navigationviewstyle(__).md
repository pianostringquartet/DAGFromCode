---
title: navigationViewStyle(_:)
description: Sets the style for navigation views within this view.
source: https://developer.apple.com/documentation/swiftui/view/navigationviewstyle(_:)
timestamp: 2025-10-29T00:11:19.386Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationViewStyle(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Sets the style for navigation views within this view.

```swift
nonisolated func navigationViewStyle<S>(_ style: S) -> some View where S : NavigationViewStyle
```

## Discussion

Use this modifier to change the appearance and behavior of navigation views. For example, by default, navigation views appear with multiple columns in wider environments, like iPad in landscape orientation:



You can apply the [stack](/documentation/swiftui/navigationviewstyle/stack) style to force single-column stack navigation in these environments:

```swift
NavigationView {
    List {
        NavigationLink("Purple", destination: ColorDetail(color: .purple))
        NavigationLink("Pink", destination: ColorDetail(color: .pink))
        NavigationLink("Orange", destination: ColorDetail(color: .orange))
    }
    .navigationTitle("Colors")

    Text("Select a Color") // A placeholder to show before selection.
}
.navigationViewStyle(.stack)
```



## Styling navigation views

- [NavigationViewStyle](/documentation/swiftui/navigationviewstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
