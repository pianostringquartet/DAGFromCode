---
title: menuIndicator(_:)
description: Sets the menu indicator visibility for controls within this view.
source: https://developer.apple.com/documentation/swiftui/view/menuindicator(_:)
timestamp: 2025-10-29T00:09:43.705Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# menuIndicator(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> Sets the menu indicator visibility for controls within this view.

```swift
nonisolated func menuIndicator(_ visibility: Visibility) -> some View
```

## Parameters

**visibility**

The menu indicator visibility to apply.



## Discussion

Use this modifier to override the default menu indicator visibility for controls in this view. For example, the code below creates a menu without an indicator:

```swift
Menu {
    ForEach(history , id: \.self) { historyItem in
        Button(historyItem.title) {
            self.openURL(historyItem.url)
        }
    }
} label: {
    Label("Back", systemImage: "chevron.backward")
        .labelStyle(.iconOnly)
} primaryAction: {
    if let last = history.last {
        self.openURL(last.url)
    }
}
.menuIndicator(.hidden)
```

> [!NOTE]
> On tvOS, the standard button styles do not include a menu indicator, so this modifier will have no effect when using a built-in button style. You can implement an indicator in your own [Button Style](/documentation/swiftui/buttonstyle) implementation by checking the value of the `menuIndicatorVisibility` environment value.

## Showing a menu indicator

- [menuIndicatorVisibility](/documentation/swiftui/environmentvalues/menuindicatorvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
