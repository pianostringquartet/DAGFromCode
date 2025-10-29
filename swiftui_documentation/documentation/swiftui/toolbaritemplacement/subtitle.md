---
title: subtitle
description: Places the item in the subtitle area of the navigation bar.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/subtitle
timestamp: 2025-10-29T00:12:14.661Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# subtitle

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+

> Places the item in the subtitle area of the navigation bar.

```swift
static let subtitle: ToolbarItemPlacement
```

## Discussion

The view will be shown when the navigation bar renders its title inline, and takes precedence over the value provided to the `View.navigationSubtitle(_:)` modifier.

```swift
struct ContentView: View {
    var body: some View {
        NavigationStack {
            DetailView()
                .navigationTitle("Title")
                .navigationSubtitle("Subtitle")
                .toolbar {
                    ToolbarItem(placement: .subtitle) {
                        CustomNavigationSubtitle()
                    }
                }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
