---
title: allowedDynamicRange(_:)
description: Returns a new image configured with the specified allowed dynamic range.
source: https://developer.apple.com/documentation/swiftui/image/alloweddynamicrange(_:)
timestamp: 2025-10-29T00:11:53.178Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Instance Method**

# allowedDynamicRange(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a new image configured with the specified allowed dynamic range.

```swift
func allowedDynamicRange(_ range: Image.DynamicRange?) -> Image
```

## Parameters

**range**

The requested dynamic range, or nil to restore the default allowed range.



## Return Value

A new image.

## Discussion

The following example enables HDR rendering for a specific image view, assuming that the image has an HDR (ITU-R 2100) color space and the output device supports it:

```swift
Image("hdr-asset").allowedDynamicRange(.high)
```

## Specifying dynamic range

- [allowedDynamicRange](/documentation/swiftui/environmentvalues/alloweddynamicrange)
- [Image.DynamicRange](/documentation/swiftui/image/dynamicrange)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
