---
title: SharePreview
description: A representation of a type to display in a share preview.
source: https://developer.apple.com/documentation/swiftui/sharepreview
timestamp: 2025-10-29T00:12:18.375Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SharePreview

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> A representation of a type to display in a share preview.

```swift
struct SharePreview<Image, Icon> where Image : Transferable, Icon : Transferable
```

## Overview

Use this type when sharing content that the system can’t preview automatically:

```swift
struct Photo: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(\.image)
    }

    public var image: Image
    public var caption: String
}

struct PhotoView: View {
    let photo: Photo

    var body: View {
        photo.image
            .toolbar {
                ShareLink(
                    item: photo,
                    preview: SharePreview(
                        photo.caption,
                        image: photo.image))
            }
    }
}
```

You can also provide a preview to speed up the sharing process. In the following example the preview appears immediately; if you omit the preview instead, the system fetches the link’s metadata over the network:

```swift
ShareLink(
    item: URL(string: "https://developer.apple.com/xcode/swiftui/")!,
    preview: SharePreview(
        "SwiftUI",
        image: Image("SwiftUI"))
```

You can provide unique previews for each item in a collection of items that a `ShareLink` links to:

```swift
ShareLink(items: photos) { photo in
    SharePreview(photo.caption, image: photo.image)
}
```

The share interface decides how to combine those previews.

Each preview specifies text and images that describe an item of the type. The preview’s `image` parameter is typically a full-size representation of the item. For instance, if the system prepares a preview for a link to a webpage, the image might be the hero image on that webpage.

The preview’s `icon` parameter is typically a thumbnail-sized representation of the source of the item. For instance, if the system prepares a preview for a link to a webpage, the icon might be an image that represents the website overall.

The system may reuse a single preview representation for multiple previews, and show different images in each context. For more information and recommended sizes for each image, see [_index.html](https://developer.apple.com/library/archive/technotes/tn2444/_index.html).

## Creating a preview

- [init(_:)](/documentation/swiftui/sharepreview/init(_:)) Creates a preview representation.
- [init(_:image:)](/documentation/swiftui/sharepreview/init(_:image:)) Creates a preview representation.
- [init(_:icon:)](/documentation/swiftui/sharepreview/init(_:icon:)) Creates a preview representation.
- [init(_:image:icon:)](/documentation/swiftui/sharepreview/init(_:image:icon:)) Creates a preview representation.

## Linking to other content

- [Link](/documentation/swiftui/link)
- [ShareLink](/documentation/swiftui/sharelink)
- [TextFieldLink](/documentation/swiftui/textfieldlink)
- [HelpLink](/documentation/swiftui/helplink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
