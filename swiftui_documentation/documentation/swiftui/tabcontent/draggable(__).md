---
title: draggable(_:)
description: Activates this tab as the source of a drag and drop operation. This tab can only be dragged when in the sidebar.
source: https://developer.apple.com/documentation/swiftui/tabcontent/draggable(_:)
timestamp: 2025-10-29T00:09:09.813Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# draggable(_:)

**Available on:** iOS 18.1+, iPadOS 18.1+, Mac Catalyst 18.1+, macOS 15.1+, visionOS 2.1+

> Activates this tab as the source of a drag and drop operation. This tab can only be dragged when in the sidebar.

```swift
@MainActor @preconcurrency func draggable<T>(_ payload: @autoclosure @escaping () -> T) -> some TabContent<Self.TabValue> where T : Transferable
```

## Parameters

**payload**

A closure that returns a single instance or a value conforming to [Transferable](/documentation/CoreTransferable/Transferable) that represents the draggable data from this tab.



## Discussion

Applying the `draggable(_:)` modifier adds the appropriate gestures for drag and drop to this tab. When a drag operation begins, a rendering of the tab is generated and used as the preview image.

The following example allows the ‘Family’ tab to be dragged and dropped.

```swift
TabView {
    Tab("Family", systemImage: "list.bullet") {
        MyFamilyView()
    }
    .draggable(AppSections.family)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
