---
title: init(systemName:)
description: Creates a system symbol image.
source: https://developer.apple.com/documentation/swiftui/image/init(systemname:)
timestamp: 2025-10-29T00:14:28.828Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(systemName:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 11.0+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a system symbol image.

```swift
init(systemName: String)
```

## Parameters

**systemName**

The name of the system symbol image. Use the SF Symbols app to look up the names of system symbol images.



## Discussion

This initializer creates an image using a system-provided symbol. Use [#sf](https://developer.apple.com/design/resources/#sf-symbols) to find symbols and their corresponding names.

To create a custom symbol image from your app’s asset catalog, use [init(_:bundle:)](/documentation/swiftui/image/init(_:bundle:)) instead.

## Creating a system symbol image

- [init(systemName:variableValue:)](/documentation/swiftui/image/init(systemname:variablevalue:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
