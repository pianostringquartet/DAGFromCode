---
title: alternatingRowBackgrounds(_:)
description: Overrides whether lists and tables in this view have alternating row backgrounds.
source: https://developer.apple.com/documentation/swiftui/view/alternatingrowbackgrounds(_:)
timestamp: 2025-10-29T00:14:54.703Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# alternatingRowBackgrounds(_:)

**Available on:** macOS 14.0+

> Overrides whether lists and tables in this view have alternating row backgrounds.

```swift
nonisolated func alternatingRowBackgrounds(_ behavior: AlternatingRowBackgroundBehavior = .enabled) -> some View
```

## Parameters

**behavior**

Whether alternating row backgrounds are enabled or not.



## Discussion

This can be used in conjunction with an explicit list or table style or used by itself to customize the row backgrounds of the automatic style. The only list style this has no effect on is `.sidebar.`

```swift
List(recipe.ingredients) {
    Text($0.name)
}
.listStyle(.bordered)
.alternatingRowBackgrounds()
```

This is able to be combined with `scrollContentBackground(_:)` and applies an alternating row background on top of the overall list or table background.

This can also be combined with `listRowBackground`, which overrides the background for a specific list row, replacing the automatic alternating background for that row.

## Configuring backgrounds

- [listRowBackground(_:)](/documentation/swiftui/view/listrowbackground(_:))
- [AlternatingRowBackgroundBehavior](/documentation/swiftui/alternatingrowbackgroundbehavior)
- [backgroundProminence](/documentation/swiftui/environmentvalues/backgroundprominence)
- [BackgroundProminence](/documentation/swiftui/backgroundprominence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
