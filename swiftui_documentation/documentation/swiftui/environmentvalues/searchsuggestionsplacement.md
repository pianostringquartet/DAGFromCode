---
title: searchSuggestionsPlacement
description: The current placement of search suggestions.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/searchsuggestionsplacement
timestamp: 2025-10-29T00:13:43.033Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# searchSuggestionsPlacement

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The current placement of search suggestions.

```swift
var searchSuggestionsPlacement: SearchSuggestionsPlacement { get }
```

## Discussion

Search suggestions render based on the platform and surrounding context in which you place the searchable modifier containing suggestions. You can render search suggestions in two ways:

- In a menu attached to the search field.
- Inline with the main content of the app.

You find the current search suggestion placement by querying the [search Suggestions Placement](/documentation/swiftui/environmentvalues/searchsuggestionsplacement) in your search suggestions.

```swift
enum FruitSuggestion: String, Identifiable {
    case apple, banana, orange
    var id: Self { self }
}

@State private var text: String = ""
@State private var suggestions: [FruitSuggestion] = []

var body: some View {
    MainContent()
        .searchable(text: $text) {
            FruitSuggestions(suggestions: suggestions)
        }
}

struct FruitSuggestions: View {
    var suggestions: [FruitSuggestion]

    @Environment(\.searchSuggestionsPlacement)
    private var placement

    var body: some View {
        if shouldRender {
            ForEach(suggestions) { suggestion in
                Text(suggestion.rawValue.capitalized)
                    .searchCompletion(suggestion.rawValue)
            }
        }
    }

    var shouldRender: Bool {
        #if os(iOS)
        placement == .menu
        #else
        true
        #endif
    }
}
```

In the above example, search suggestions only render in iOS if the searchable modifier displays them in a menu. You might want to do this to render suggestions in your own list alongside your own search results when they would render in a list.

## Controls and input

- [buttonRepeatBehavior](/documentation/swiftui/environmentvalues/buttonrepeatbehavior)
- [controlSize](/documentation/swiftui/environmentvalues/controlsize)
- [defaultWheelPickerItemHeight](/documentation/swiftui/environmentvalues/defaultwheelpickeritemheight)
- [keyboardShortcut](/documentation/swiftui/environmentvalues/keyboardshortcut)
- [menuIndicatorVisibility](/documentation/swiftui/environmentvalues/menuindicatorvisibility)
- [menuOrder](/documentation/swiftui/environmentvalues/menuorder)
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction)
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
