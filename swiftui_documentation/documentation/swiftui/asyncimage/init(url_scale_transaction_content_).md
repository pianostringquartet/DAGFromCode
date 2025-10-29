---
title: init(url:scale:transaction:content:)
description: Loads and displays a modifiable image from the specified URL in phases.
source: https://developer.apple.com/documentation/swiftui/asyncimage/init(url:scale:transaction:content:)
timestamp: 2025-10-29T00:11:19.049Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [asyncimage](/documentation/swiftui/asyncimage)

**Initializer**

# init(url:scale:transaction:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Loads and displays a modifiable image from the specified URL in phases.

```swift
init(url: URL?, scale: CGFloat = 1, transaction: Transaction = Transaction(), @ViewBuilder content: @escaping (AsyncImagePhase) -> Content)
```

## Parameters

**url**

The URL of the image to display.



**scale**

The scale to use for the image. The default is `1`. Set a different value when loading images designed for higher resolution displays. For example, set a value of `2` for an image that you would name with the `@2x` suffix if stored in a file on disk.



**transaction**

The transaction to use when the phase changes.



**content**

A closure that takes the load phase as an input, and returns the view to display for the specified phase.



## Discussion

If you set the asynchronous image’s URL to `nil`, or after you set the URL to a value but before the load operation completes, the phase is [empty](/documentation/swiftui/asyncimagephase/empty). After the operation completes, the phase becomes either [failure(_:)](/documentation/swiftui/asyncimagephase/failure(_:)) or [success(_:)](/documentation/swiftui/asyncimagephase/success(_:)). In the first case, the phase’s [error](/documentation/swiftui/asyncimagephase/error) value indicates the reason for failure. In the second case, the phase’s [image](/documentation/swiftui/asyncimagephase/image) property contains the loaded image. Use the phase to drive the output of the `content` closure, which defines the view’s appearance:

```swift
AsyncImage(url: URL(string: "https://example.com/icon.png")) { phase in
    if let image = phase.image {
        image // Displays the loaded image.
    } else if phase.error != nil {
        Color.red // Indicates an error.
    } else {
        Color.blue // Acts as a placeholder.
    }
}
```

To add transitions when you change the URL, apply an identifier to the [Async Image](/documentation/swiftui/asyncimage).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
