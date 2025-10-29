---
title: photosPickerAccessoryVisibility(_:edges:)
description: Sets the accessory visibility of the Photos picker. Accessories include anything between the content and the edge, like the navigation bar or the sidebar.
source: https://developer.apple.com/documentation/swiftui/view/photospickeraccessoryvisibility(_:edges:)
timestamp: 2025-10-29T00:11:18.847Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# photosPickerAccessoryVisibility(_:edges:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+

> Sets the accessory visibility of the Photos picker. Accessories include anything between the content and the edge, like the navigation bar or the sidebar.

```swift
nonisolated func photosPickerAccessoryVisibility(_ visibility: Visibility, edges: Edge.Set = .all) -> some View
```

## Parameters

**edges**

The accessory visibility to apply.



**edges**

One or more of the available edges.



## Return Value

A Photos picker with the specified accessory visibility.

## Selecting photos

- [PhotosPicker](/documentation/PhotosUI/PhotosPicker)
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:))
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:photolibrary:))
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:))
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:photolibrary:))
- [photosPickerDisabledCapabilities(_:)](/documentation/swiftui/view/photospickerdisabledcapabilities(_:))
- [photosPickerStyle(_:)](/documentation/swiftui/view/photospickerstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
