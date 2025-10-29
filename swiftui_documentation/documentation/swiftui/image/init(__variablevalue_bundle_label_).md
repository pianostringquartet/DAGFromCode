---
title: init(_:variableValue:bundle:label:)
description: Creates a labeled image that you can use as content for controls, with the specified label and variable value.
source: https://developer.apple.com/documentation/swiftui/image/init(_:variablevalue:bundle:label:)
timestamp: 2025-10-29T00:12:49.166Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(_:variableValue:bundle:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a labeled image that you can use as content for controls, with the specified label and variable value.

```swift
init(_ name: String, variableValue: Double?, bundle: Bundle? = nil, label: Text)
```

## Parameters

**name**

The name of the image resource to lookup.



**variableValue**

An optional value between `0.0` and `1.0` that the rendered image can use to customize its appearance, if specified. If the symbol doesn’t support variable values, this parameter has no effect.



**bundle**

The bundle to search for the image resource. If `nil`, SwiftUI uses the main `Bundle`. Defaults to `nil`.



**label**

The label associated with the image. SwiftUI uses the label for accessibility.



## Discussion

This initializer creates an image using a using a symbol in the specified bundle. The rendered symbol may alter its appearance to represent the value provided in `variableValue`.

> [!NOTE]
> See WWDC22 session [](https://developer.apple.com/wwdc22/10158/) for details on how to create symbols that support variable values.

## Creating an image for use as a control

- [init(_:bundle:label:)](/documentation/swiftui/image/init(_:bundle:label:))
- [init(_:scale:orientation:label:)](/documentation/swiftui/image/init(_:scale:orientation:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
