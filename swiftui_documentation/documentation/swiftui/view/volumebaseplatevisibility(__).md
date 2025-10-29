---
title: volumeBaseplateVisibility(_:)
description: Sets the visibility of the baseplate of a volume, which appears when a user looks towards the ‘floor’ of a volume and during resize. Both  and  will show the baseplate.  will never show it.
source: https://developer.apple.com/documentation/swiftui/view/volumebaseplatevisibility(_:)
timestamp: 2025-10-29T00:12:49.282Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# volumeBaseplateVisibility(_:)

**Available on:** visionOS 2.0+

> Sets the visibility of the baseplate of a volume, which appears when a user looks towards the ‘floor’ of a volume and during resize. Both  and  will show the baseplate.  will never show it.

```swift
nonisolated func volumeBaseplateVisibility(_ visibility: Visibility) -> some View
```

## Discussion

The baseplate is a semi-transparent view that appears on the ‘floor’ of a volume.

Usage:

```swift
WindowGroup() {
    Poker()
        .volumeBaseplateVisibility(.visible)
}
.windowStyle(.volumetric)
```

Defaults to `automatic` (visible).

## Visibility

- [hidden()](/documentation/swiftui/view/hidden())
- [labelsHidden()](/documentation/swiftui/view/labelshidden())
- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:))
- [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:))
- [listSectionSeparator(_:edges:)](/documentation/swiftui/view/listsectionseparator(_:edges:))
- [persistentSystemOverlays(_:)](/documentation/swiftui/view/persistentsystemoverlays(_:))
- [scrollIndicators(_:axes:)](/documentation/swiftui/view/scrollindicators(_:axes:))
- [scrollClipDisabled(_:)](/documentation/swiftui/view/scrollclipdisabled(_:))
- [tableColumnHeaders(_:)](/documentation/swiftui/view/tablecolumnheaders(_:))
- [upperLimbVisibility(_:)](/documentation/swiftui/view/upperlimbvisibility(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
