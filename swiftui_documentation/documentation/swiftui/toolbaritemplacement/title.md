---
title: title
description: Places the item in the title area of the navigation bar.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/title
timestamp: 2025-10-29T00:10:10.851Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# title

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+

> Places the item in the title area of the navigation bar.

```swift
static var title: ToolbarItemPlacement { get }
```

## Discussion

The view will be shown when the navigation bar renders its title inline, and takes precedence over the value provided to the `View.navigationTitle(_:)` modifier.

```swift
struct ContentView: View {
    var body: some View {
        NavigationStack {
            DetailView()
                .navigationTitle("Title")
                .navigationSubtitle("Subtitle")
                .toolbar {
                    ToolbarItem(placement: .title) {
                        CustomNavigationTitle()
                    }
                }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
