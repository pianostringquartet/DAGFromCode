---
title: init(url:scale:)
description: Loads and displays an image from the specified URL.
source: https://developer.apple.com/documentation/swiftui/asyncimage/init(url:scale:)
timestamp: 2025-10-29T00:13:42.696Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [asyncimage](/documentation/swiftui/asyncimage)

**Initializer**

# init(url:scale:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Loads and displays an image from the specified URL.

```swift
init(url: URL?, scale: CGFloat = 1) where Content == Image
```

## Parameters

**url**

The URL of the image to display.



**scale**

The scale to use for the image. The default is `1`. Set a different value when loading images designed for higher resolution displays. For example, set a value of `2` for an image that you would name with the `@2x` suffix if stored in a file on disk.



## Discussion

Until the image loads, SwiftUI displays a default placeholder. When the load operation completes successfully, SwiftUI updates the view to show the loaded image. If the operation fails, SwiftUI continues to display the placeholder. The following example loads and displays an icon from an example server:

```swift
AsyncImage(url: URL(string: "https://example.com/icon.png"))
```

If you want to customize the placeholder or apply image-specific modifiers — like [resizable(capInsets:resizingMode:)](/documentation/swiftui/image/resizable(capinsets:resizingmode:)) — to the loaded image, use the [init(url:scale:content:placeholder:)](/documentation/swiftui/asyncimage/init(url:scale:content:placeholder:)) initializer instead.

## Loading an image

- [init(url:scale:content:placeholder:)](/documentation/swiftui/asyncimage/init(url:scale:content:placeholder:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
