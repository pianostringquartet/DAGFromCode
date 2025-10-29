---
title: headerProminence(_:)
description: Sets the header prominence for this view.
source: https://developer.apple.com/documentation/swiftui/view/headerprominence(_:)
timestamp: 2025-10-29T00:11:29.978Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# headerProminence(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the header prominence for this view.

```swift
nonisolated func headerProminence(_ prominence: Prominence) -> some View
```

## Parameters

**prominence**

The prominence to apply.



## Discussion

In the following example, the section header appears with increased prominence:

```swift
List {
    Section(header: Text("Header")) {
        Text("Row")
    }
    .headerProminence(.increased)
}
.listStyle(.insetGrouped)
```

## Configuring headers

- [headerProminence](/documentation/swiftui/environmentvalues/headerprominence)
- [Prominence](/documentation/swiftui/prominence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
