---
title: listSectionSpacing(_:)
description: Sets the spacing between adjacent sections in a  to a custom value.
source: https://developer.apple.com/documentation/swiftui/view/listsectionspacing(_:)
timestamp: 2025-10-29T00:11:27.584Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listSectionSpacing(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the spacing between adjacent sections in a  to a custom value.

```swift
nonisolated func listSectionSpacing(_ spacing: CGFloat) -> some View
```

## Parameters

**spacing**

The amount of spacing to apply.



## Discussion

The following example creates a [List](/documentation/swiftui/list) with 5 pts of spacing between sections:

```swift
List {
    Section("Colors") {
        Text("Blue")
        Text("Red")
    }

    Section("Shapes") {
        Text("Square")
        Text("Circle")
    }
}
.listSectionSpacing(5.0)
```

Spacing can also be specified on an individual [Section](/documentation/swiftui/section), as in this example:

```swift
Section("Borders") {
    Text("Dashed")
    Text("Solid")
}
.listSectionSpacing(10.0)
```

If adjacent sections have different spacing applied, each section applies half its spacing above and below. Sections without explicit spacing apply the spacing of their adjacent sections.

```swift
List {
    Section("Colors") {
        Text("Blue")
        Text("Red")
    }

    Section("Borders") {
        Text("Dashed")
        Text("Solid")
    }
    .listSectionSpacing(10.0)

    Section("Shapes") {
        Text("Square")
        Text("Circle")
    }
    .listSectionSpacing(100.0)
}
```

In the above example, the “Colors” and “Borders” section are separated by 10 pts of spacing, and the “Borders” and “Shapes” section are separated by 55 pts of spacing.

Spacing applied on sections in the [List](/documentation/swiftui/list) overrides spacing applied on the [List](/documentation/swiftui/list) as a whole.

## Configuring a list’s layout

- [listRowInsets(_:)](/documentation/swiftui/view/listrowinsets(_:))
- [defaultMinListRowHeight](/documentation/swiftui/environmentvalues/defaultminlistrowheight)
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight)
- [listRowSpacing(_:)](/documentation/swiftui/view/listrowspacing(_:))
- [ListSectionSpacing](/documentation/swiftui/listsectionspacing)
- [listSectionMargins(_:_:)](/documentation/swiftui/view/listsectionmargins(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
