---
title: listRowBackground(_:)
description: Places a custom background view behind a list row item.
source: https://developer.apple.com/documentation/swiftui/view/listrowbackground(_:)
timestamp: 2025-10-29T00:10:59.207Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowBackground(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Places a custom background view behind a list row item.

```swift
nonisolated func listRowBackground<V>(_ view: V?) -> some View where V : View
```

## Parameters

**view**

The [View](/documentation/swiftui/view) to use as the background behind the list row view.



## Return Value

A list row view with `view` as its background view.

## Discussion

Use `listRowBackground(_:)` to place a custom background view behind a list row item.

In the example below, the `Flavor` enumeration provides content for list items. The SwiftUI [For Each](/documentation/swiftui/foreach) structure computes views for each element of the `Flavor` enumeration and extracts the raw value of each of its elements using the resulting text to create each list row item. The `listRowBackground(_:)` modifier then places the view you supply behind each of the list row items:

```swift
struct ContentView: View {
    enum Flavor: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }
        case vanilla, chocolate, strawberry
    }

    var body: some View {
        List {
            ForEach(Flavor.allCases) {
                Text($0.rawValue)
                    .listRowBackground(Ellipse()
                                        .background(Color.clear)
                                        .foregroundColor(.purple)
                                        .opacity(0.3)
                    )
            }
        }
    }
}
```



## Configuring backgrounds

- [alternatingRowBackgrounds(_:)](/documentation/swiftui/view/alternatingrowbackgrounds(_:))
- [AlternatingRowBackgroundBehavior](/documentation/swiftui/alternatingrowbackgroundbehavior)
- [backgroundProminence](/documentation/swiftui/environmentvalues/backgroundprominence)
- [BackgroundProminence](/documentation/swiftui/backgroundprominence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
