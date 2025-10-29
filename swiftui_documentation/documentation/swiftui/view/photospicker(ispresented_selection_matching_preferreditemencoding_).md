---
title: photosPicker(isPresented:selection:matching:preferredItemEncoding:)
description: Presents a Photos picker that selects a .
source: https://developer.apple.com/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:)
timestamp: 2025-10-29T00:10:20.062Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# photosPicker(isPresented:selection:matching:preferredItemEncoding:)

**Available on:** iOS 16.0+, iPadOS 16.0+, macOS 13.0+, watchOS 9.0+

> Presents a Photos picker that selects a .

```swift
nonisolated func photosPicker(isPresented: Binding<Bool>, selection: Binding<PhotosPickerItem?>, matching filter: PHPickerFilter? = nil, preferredItemEncoding: PhotosPickerItem.EncodingDisambiguationPolicy = .automatic) -> some View
```

## Parameters

**isPresented**

The binding to whether the Photos picker should be shown.



**selection**

The item being shown and selected in the Photos picker.



**filter**

Types of items that can be shown. Default is `nil`. Setting it to `nil` means all supported types can be shown.



**preferredItemEncoding**

The encoding disambiguation policy of the selected item. Default is `.automatic`. Setting it to `.automatic` means the best encoding determined by the system will be used.



## Discussion

The user explicitly grants access only to items they choose, so photo library access authorization is not needed.

## Selecting photos

- [PhotosPicker](/documentation/PhotosUI/PhotosPicker)
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:photolibrary:))
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:))
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:photolibrary:))
- [photosPickerAccessoryVisibility(_:edges:)](/documentation/swiftui/view/photospickeraccessoryvisibility(_:edges:))
- [photosPickerDisabledCapabilities(_:)](/documentation/swiftui/view/photospickerdisabledcapabilities(_:))
- [photosPickerStyle(_:)](/documentation/swiftui/view/photospickerstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
