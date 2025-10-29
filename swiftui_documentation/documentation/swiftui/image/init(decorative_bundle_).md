---
title: init(decorative:bundle:)
description: Creates an unlabeled, decorative image.
source: https://developer.apple.com/documentation/swiftui/image/init(decorative:bundle:)
timestamp: 2025-10-29T00:10:06.409Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(decorative:bundle:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an unlabeled, decorative image.

```swift
init(decorative name: String, bundle: Bundle? = nil)
```

## Parameters

**name**

The name of the image resource to lookup



**bundle**

The bundle to search for the image resource. If `nil`, SwiftUI uses the main `Bundle`. Defaults to `nil`.



## Discussion

SwiftUI ignores this image for accessibility purposes.

## Creating an image for decorative use

- [init(decorative:variableValue:bundle:)](/documentation/swiftui/image/init(decorative:variablevalue:bundle:))
- [init(decorative:scale:orientation:)](/documentation/swiftui/image/init(decorative:scale:orientation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
