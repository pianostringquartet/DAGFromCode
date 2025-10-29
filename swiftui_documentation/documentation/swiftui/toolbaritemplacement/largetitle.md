---
title: largeTitle
description: Places the item in the title area of the navigation bar.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/largetitle
timestamp: 2025-10-29T00:15:02.706Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# largeTitle

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+

> Places the item in the title area of the navigation bar.

```swift
static let largeTitle: ToolbarItemPlacement
```

## Discussion

The view will be shown when the navigation bar renders its title out-of-line, and takes precedence over the value provided to the `View.navigationTitle(_:)` modifier.

```swift
struct ContentView: View {
    var body: some View {
        NavigationStack {
            DetailView()
                .navigationTitle("Title")
                .navigationSubtitle("Subtitle")
                .toolbar {
                    ToolbarItem(placement: .largeTitle) {
                        CustomLargeNavigationTitle()
                    }
                }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
