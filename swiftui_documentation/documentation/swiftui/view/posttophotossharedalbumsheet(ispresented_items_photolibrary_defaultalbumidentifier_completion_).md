---
title: postToPhotosSharedAlbumSheet(isPresented:items:photoLibrary:defaultAlbumIdentifier:completion:)
description: Presents an “Add to Shared Album” sheet that allows the user to post the given items to a shared album.
source: https://developer.apple.com/documentation/swiftui/view/posttophotossharedalbumsheet(ispresented:items:photolibrary:defaultalbumidentifier:completion:)
timestamp: 2025-10-29T00:12:33.076Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# postToPhotosSharedAlbumSheet(isPresented:items:photoLibrary:defaultAlbumIdentifier:completion:)

**Available on:** iOS 26.0+, iPadOS 26.0+

> Presents an “Add to Shared Album” sheet that allows the user to post the given items to a shared album.

```swift
@MainActor func postToPhotosSharedAlbumSheet(isPresented: Binding<Bool>, items: [PHPickerResult], photoLibrary: PHPhotoLibrary, defaultAlbumIdentifier: String? = nil, completion: ((Result<Void, any Error>) -> Void)? = nil) -> some View
```

## Discussion

- isPresented: The binding to whether the sheet should be shown.
- items: The items to be posted to the shared album.
- photoLibrary: Library to choose from.
- defaultAlbumIdentifier: Identifier for the shared album to be pre-selected. If none provided user can manually choose the shared album in UI.
- completion: Called with the result on completion of the request.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
