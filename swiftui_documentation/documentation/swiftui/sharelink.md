---
title: ShareLink
description: A view that controls a sharing presentation.
source: https://developer.apple.com/documentation/swiftui/sharelink
timestamp: 2025-10-29T00:09:56.626Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ShareLink

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> A view that controls a sharing presentation.

```swift
struct ShareLink<Data, PreviewImage, PreviewIcon, Label> where Data : RandomAccessCollection, PreviewImage : Transferable, PreviewIcon : Transferable, Label : View, Data.Element : Transferable
```

## Overview

People tap or click on a share link to present a share interface. The link typically uses a system-standard appearance; you only need to supply the content to share:

```swift
ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!)
```

You can control the appearance of the link by providing view content. For example, you can use a [Label](/documentation/swiftui/label) to display a link with a custom icon:

```swift
ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
    Label("Share", image: "MyCustomShareIcon")
}
```

If you only wish to customize the link’s title, you can use one of the convenience initializers that takes a string and creates a `Label` for you:

```swift
ShareLink("Share URL", item: URL(string: "https://developer.apple.com/xcode/swiftui/")!)
```

The link can share any content that is [Transferable](/documentation/CoreTransferable/Transferable). Many framework types, like [URL](/documentation/Foundation/URL), already conform to this protocol. You can also make your own types transferable.

For example, you can use [Proxy Representation](/documentation/CoreTransferable/ProxyRepresentation) to resolve your own type to a framework type:

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

Sometimes the content that your app shares isn’t immediately available. You can use [File Representation](/documentation/CoreTransferable/FileRepresentation) or [Data Representation](/documentation/CoreTransferable/DataRepresentation) when you need an asynchronous operation, like a network request, to retrieve and prepare the content.

Note that some applications offer their sharing service for files, but not for a wide range of different data types, for example, Mail.app, Notes.app, Messages.app or AirDrop. If you don’t see a particular sharing service in the presented `ShareLink`, try adding a [File Representation](/documentation/CoreTransferable/FileRepresentation) to the type’s `Transferable` conformance.

A `Transferable` type also lets you provide multiple content types for a single shareable item. The share interface shows relevant sharing services based on the types that you provide.

The previous example also shows how you provide a preview of your content to show in the share interface.

A preview isn’t required when sharing URLs or non-attributed strings. When sharing these types of content, the system can automatically determine a preview.

You can provide a preview even when it’s optional. For instance, when sharing URLs, the automatic preview first shows a placeholder link icon alongside the base URL while fetching the link’s metadata over the network. The preview updates once the link’s icon and title become available. If you provide a preview instead, the preview appears immediately without fetching data over the network.

Some share activities support subject and message fields. You can pre-populate these fields with the `subject` and `message` parameters:

```swift
ShareLink(
    item: photo,
    subject: Text("Cool Photo"),
    message: Text("Check it out!")
    preview: SharePreview(
        photo.caption,
        image: photo.image))
```

## Conforms To

- [View](/documentation/swiftui/view)

## Sharing an item

- [init(item:subject:message:)](/documentation/swiftui/sharelink/init(item:subject:message:)) Creates an instance that presents the share interface.
- [init(_:item:subject:message:)](/documentation/swiftui/sharelink/init(_:item:subject:message:)) Creates an instance, with a custom label, that presents the share interface.
- [init(item:subject:message:label:)](/documentation/swiftui/sharelink/init(item:subject:message:label:)) Creates an instance that presents the share interface.

## Sharing an item with a preview

- [init(item:subject:message:preview:)](/documentation/swiftui/sharelink/init(item:subject:message:preview:)) Creates an instance that presents the share interface.
- [init(_:item:subject:message:preview:)](/documentation/swiftui/sharelink/init(_:item:subject:message:preview:)) Creates an instance, with a custom label, that presents the share interface.
- [init(item:subject:message:preview:label:)](/documentation/swiftui/sharelink/init(item:subject:message:preview:label:)) Creates an instance that presents the share interface.

## Sharing items

- [init(items:subject:message:)](/documentation/swiftui/sharelink/init(items:subject:message:)) Creates an instance that presents the share interface.
- [init(_:items:subject:message:)](/documentation/swiftui/sharelink/init(_:items:subject:message:)) Creates an instance, with a custom label, that presents the share interface.
- [init(items:subject:message:label:)](/documentation/swiftui/sharelink/init(items:subject:message:label:)) Creates an instance that presents the share interface.

## Sharing items with a preview

- [init(items:subject:message:preview:)](/documentation/swiftui/sharelink/init(items:subject:message:preview:)) Creates an instance that presents the share interface.
- [init(_:items:subject:message:preview:)](/documentation/swiftui/sharelink/init(_:items:subject:message:preview:)) Creates an instance, with a custom label, that presents the share interface.
- [init(items:subject:message:preview:label:)](/documentation/swiftui/sharelink/init(items:subject:message:preview:label:)) Creates an instance that presents the share interface.

## Supporting types

- [DefaultShareLinkLabel](/documentation/swiftui/defaultsharelinklabel) The default label used for a share link.

## Linking to other content

- [Link](/documentation/swiftui/link)
- [SharePreview](/documentation/swiftui/sharepreview)
- [TextFieldLink](/documentation/swiftui/textfieldlink)
- [HelpLink](/documentation/swiftui/helplink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
