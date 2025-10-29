---
title: tabItem(_:)
description: Sets the tab bar item associated with this view.
source: https://developer.apple.com/documentation/swiftui/view/tabitem(_:)
timestamp: 2025-10-29T00:12:47.248Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabItem(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Sets the tab bar item associated with this view.

```swift
nonisolated func tabItem<V>(@ViewBuilder _ label: () -> V) -> some View where V : View
```

## Parameters

**label**

The tab bar item to associate with this view.



## Discussion

Use `tabItem(_:)` to configure a view as a tab bar item in a [Tab View](/documentation/swiftui/tabview). The example below adds two views as tabs in a [Tab View](/documentation/swiftui/tabview):

```swift
struct View1: View {
    var body: some View {
        Text("View 1")
    }
}

struct View2: View {
    var body: some View {
        Text("View 2")
    }
}

struct TabItem: View {
    var body: some View {
        TabView {
            View1()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }

            View2()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}
```



## Deprecated Types

- [NavigationView](/documentation/swiftui/navigationview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
