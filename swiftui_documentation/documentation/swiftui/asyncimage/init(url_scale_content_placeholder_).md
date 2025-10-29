---
title: init(url:scale:content:placeholder:)
description: Loads and displays a modifiable image from the specified URL using a custom placeholder until the image loads.
source: https://developer.apple.com/documentation/swiftui/asyncimage/init(url:scale:content:placeholder:)
timestamp: 2025-10-29T00:14:30.964Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [asyncimage](/documentation/swiftui/asyncimage)

**Initializer**

# init(url:scale:content:placeholder:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Loads and displays a modifiable image from the specified URL using a custom placeholder until the image loads.

```swift
init<I, P>(url: URL?, scale: CGFloat = 1, @ViewBuilder content: @escaping (Image) -> I, @ViewBuilder placeholder: @escaping () -> P) where Content == _ConditionalContent<I, P>, I : View, P : View
```

## Parameters

**url**

The URL of the image to display.



**scale**

The scale to use for the image. The default is `1`. Set a different value when loading images designed for higher resolution displays. For example, set a value of `2` for an image that you would name with the `@2x` suffix if stored in a file on disk.



**content**

A closure that takes the loaded image as an input, and returns the view to show. You can return the image directly, or modify it as needed before returning it.



**placeholder**

A closure that returns the view to show until the load operation completes successfully.



## Discussion

Until the image loads, SwiftUI displays the placeholder view that you specify. When the load operation completes successfully, SwiftUI updates the view to show content that you specify, which you create using the loaded image. For example, you can show a green placeholder, followed by a tiled version of the loaded image:

```swift
AsyncImage(url: URL(string: "https://example.com/icon.png")) { image in
    image.resizable(resizingMode: .tile)
} placeholder: {
    Color.green
}
```

If the load operation fails, SwiftUI continues to display the placeholder. To be able to display a different view on a load error, use the [init(url:scale:transaction:content:)](/documentation/swiftui/asyncimage/init(url:scale:transaction:content:)) initializer instead.

## Loading an image

- [init(url:scale:)](/documentation/swiftui/asyncimage/init(url:scale:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
