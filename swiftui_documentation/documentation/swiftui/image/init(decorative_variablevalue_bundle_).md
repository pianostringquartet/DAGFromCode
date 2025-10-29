---
title: init(decorative:variableValue:bundle:)
description: Creates an unlabeled, decorative image, with a variable value.
source: https://developer.apple.com/documentation/swiftui/image/init(decorative:variablevalue:bundle:)
timestamp: 2025-10-29T00:10:55.165Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(decorative:variableValue:bundle:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates an unlabeled, decorative image, with a variable value.

```swift
init(decorative name: String, variableValue: Double?, bundle: Bundle? = nil)
```

## Parameters

**name**

The name of the image resource to lookup.



**variableValue**

An optional value between `0.0` and `1.0` that the rendered image can use to customize its appearance, if specified. If the symbol doesn’t support variable values, this parameter has no effect.



**bundle**

The bundle to search for the image resource. If `nil`, SwiftUI uses the main `Bundle`. Defaults to `nil`.



## Discussion

This initializer creates an image using a using a symbol in the specified bundle. The rendered symbol may alter its appearance to represent the value provided in `variableValue`.

> [!NOTE]
> See WWDC22 session [](https://developer.apple.com/wwdc22/10158/) for details on how to create symbols that support variable values.

SwiftUI ignores this image for accessibility purposes.

## Creating an image for decorative use

- [init(decorative:bundle:)](/documentation/swiftui/image/init(decorative:bundle:))
- [init(decorative:scale:orientation:)](/documentation/swiftui/image/init(decorative:scale:orientation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
