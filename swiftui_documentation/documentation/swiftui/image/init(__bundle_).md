---
title: init(_:bundle:)
description: Creates a labeled image that you can use as content for controls.
source: https://developer.apple.com/documentation/swiftui/image/init(_:bundle:)
timestamp: 2025-10-29T00:10:48.234Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(_:bundle:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a labeled image that you can use as content for controls.

```swift
init(_ name: String, bundle: Bundle? = nil)
```

## Parameters

**name**

The name of the image resource to lookup, as well as the localization key with which to label the image.



**bundle**

The bundle to search for the image resource and localization content. If `nil`, SwiftUI uses the main `Bundle`. Defaults to `nil`.



## Creating an image

- [init(_:variableValue:bundle:)](/documentation/swiftui/image/init(_:variablevalue:bundle:))
- [init(_:)](/documentation/swiftui/image/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
