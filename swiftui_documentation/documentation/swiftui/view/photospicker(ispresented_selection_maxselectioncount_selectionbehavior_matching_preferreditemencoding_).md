---
title: photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)
description: Presents a Photos picker that selects a collection of .
source: https://developer.apple.com/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:)
timestamp: 2025-10-29T00:15:30.117Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)

**Available on:** iOS 16.0+, iPadOS 16.0+, macOS 13.0+, watchOS 9.0+

> Presents a Photos picker that selects a collection of .

```swift
nonisolated func photosPicker(isPresented: Binding<Bool>, selection: Binding<[PhotosPickerItem]>, maxSelectionCount: Int? = nil, selectionBehavior: PhotosPickerSelectionBehavior = .default, matching filter: PHPickerFilter? = nil, preferredItemEncoding: PhotosPickerItem.EncodingDisambiguationPolicy = .automatic) -> some View
```

## Parameters

**isPresented**

The binding to whether the Photos picker should be shown.



**selection**

All items being shown and selected in the Photos picker.



**maxSelectionCount**

The maximum number of items that can be selected. Default is `nil`. Setting it to `nil` means maximum supported by the system.



**selectionBehavior**

The selection behavior of the Photos picker. Default is `.default`.



**filter**

Types of items that can be shown. Default is `nil`. Setting it to `nil` means all supported types can be shown.



**preferredItemEncoding**

The encoding disambiguation policy of selected items. Default is `.automatic`. Setting it to `.automatic` means the best encoding determined by the system will be used.



## Discussion

The user explicitly grants access only to items they choose, so photo library access authorization is not needed.

## Selecting photos

- [PhotosPicker](/documentation/PhotosUI/PhotosPicker)
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:))
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:photolibrary:))
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:photolibrary:))
- [photosPickerAccessoryVisibility(_:edges:)](/documentation/swiftui/view/photospickeraccessoryvisibility(_:edges:))
- [photosPickerDisabledCapabilities(_:)](/documentation/swiftui/view/photospickerdisabledcapabilities(_:))
- [photosPickerStyle(_:)](/documentation/swiftui/view/photospickerstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
