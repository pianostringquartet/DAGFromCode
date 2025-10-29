---
title: init(_:bundle:label:)
description: Creates a labeled image that you can use as content for controls, with the specified label.
source: https://developer.apple.com/documentation/swiftui/image/init(_:bundle:label:)
timestamp: 2025-10-29T00:11:02.181Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(_:bundle:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a labeled image that you can use as content for controls, with the specified label.

```swift
init(_ name: String, bundle: Bundle? = nil, label: Text)
```

## Parameters

**name**

The name of the image resource to lookup



**bundle**

The bundle to search for the image resource. If `nil`, SwiftUI uses the main `Bundle`. Defaults to `nil`.



**label**

The label associated with the image. SwiftUI uses the label for accessibility.



## Creating an image for use as a control

- [init(_:variableValue:bundle:label:)](/documentation/swiftui/image/init(_:variablevalue:bundle:label:))
- [init(_:scale:orientation:label:)](/documentation/swiftui/image/init(_:scale:orientation:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
