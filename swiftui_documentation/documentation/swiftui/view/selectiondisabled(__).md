---
title: selectionDisabled(_:)
description: Adds a condition that controls whether users can select this view.
source: https://developer.apple.com/documentation/swiftui/view/selectiondisabled(_:)
timestamp: 2025-10-29T00:11:23.645Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# selectionDisabled(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Adds a condition that controls whether users can select this view.

```swift
nonisolated func selectionDisabled(_ isDisabled: Bool = true) -> some View
```

## Parameters

**isDisabled**

A Boolean value that determines whether users can select this view.



## Discussion

Use this modifier to control the selectability of views in selectable containers like [List](/documentation/swiftui/list) or [Table](/documentation/swiftui/table). In the example, below, the user can’t select the first item in the list.

```swift
@Binding var selection: Item.ID?
@Binding var items: [Item]

var body: some View {
    List(selection: $selection) {
        ForEach(items) { item in
            ItemView(item: item)
                .selectionDisabled(item.id == items.first?.id)
        }
    }
}
```

You can also use this modifier to specify the selectability of views within a `Picker`. The following example represents a flavor picker that disables selection on flavors that are unavailable.

```swift
Picker("Flavor", selection: $selectedFlavor) {
    ForEach(Flavor.allCases) { flavor in
        Text(flavor.rawValue.capitalized)
            .selectionDisabled(isSoldOut(flavor))
    }
}
```

## Configuring interaction

- [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/view/swipeactions(edge:allowsfullswipe:content:))
- [listRowHoverEffect(_:)](/documentation/swiftui/view/listrowhovereffect(_:))
- [listRowHoverEffectDisabled(_:)](/documentation/swiftui/view/listrowhovereffectdisabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
