---
title: AsyncImagePhase
description: The current phase of the asynchronous image loading operation.
source: https://developer.apple.com/documentation/swiftui/asyncimagephase
timestamp: 2025-10-29T00:13:14.089Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# AsyncImagePhase

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The current phase of the asynchronous image loading operation.

```swift
enum AsyncImagePhase
```

## Overview

When you create an [Async Image](/documentation/swiftui/asyncimage) instance with the [init(url:scale:transaction:content:)](/documentation/swiftui/asyncimage/init(url:scale:transaction:content:)) initializer, you define the appearance of the view using a `content` closure. SwiftUI calls the closure with a phase value at different points during the load operation to indicate the current state. Use the phase to decide what to draw. For example, you can draw the loaded image if it exists, a view that indicates an error, or a placeholder:

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

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting load phases

- [AsyncImagePhase.empty](/documentation/swiftui/asyncimagephase/empty) No image is loaded.
- [AsyncImagePhase.success(_:)](/documentation/swiftui/asyncimagephase/success(_:)) An image successfully loaded.
- [AsyncImagePhase.failure(_:)](/documentation/swiftui/asyncimagephase/failure(_:)) An image failed to load with an error.

## Getting the image

- [image](/documentation/swiftui/asyncimagephase/image) The loaded image, if any.

## Getting the error

- [error](/documentation/swiftui/asyncimagephase/error) The error that occurred when attempting to load an image, if any.

## Loading images asynchronously

- [AsyncImage](/documentation/swiftui/asyncimage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
