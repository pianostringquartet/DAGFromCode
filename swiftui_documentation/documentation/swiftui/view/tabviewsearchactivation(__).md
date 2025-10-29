---
title: tabViewSearchActivation(_:)
description: Configures the activation and deactivation behavior of search in the search tab.
source: https://developer.apple.com/documentation/swiftui/view/tabviewsearchactivation(_:)
timestamp: 2025-10-29T00:09:45.768Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabViewSearchActivation(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+

> Configures the activation and deactivation behavior of search in the search tab.

```swift
nonisolated func tabViewSearchActivation(_ activation: TabSearchActivation) -> some View
```

## Discussion

Use this modifier on a [Tab View](/documentation/swiftui/tabview) to change how search activation is handled. The exact activation behavior is determined by the [Tab Search Activation](/documentation/swiftui/tabsearchactivation) you pass to this modifier:

```swift
struct TabExampleView: View {
    @State private var text: String = ""

    var body: some View {
        TabView {
            Tab("Books", systemImage: "book") {
                BooksTab()
            }
            Tab(role: .search) {
                NavigationStack {
                    SearchContent()
                }
            }
        }
        .searchable(text: $text)
        .tabViewSearchActivation(.searchTabSelection)
    }
}
```

By default, search is only activated and deactivated by the user.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
