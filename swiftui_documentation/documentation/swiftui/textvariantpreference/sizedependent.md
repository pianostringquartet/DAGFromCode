---
title: sizeDependent
description: The size dependent preference allows the text to take the available space into account when choosing the size variant to display.
source: https://developer.apple.com/documentation/swiftui/textvariantpreference/sizedependent
timestamp: 2025-10-29T00:09:20.011Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textvariantpreference](/documentation/swiftui/textvariantpreference)

**Type Property**

# sizeDependent

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The size dependent preference allows the text to take the available space into account when choosing the size variant to display.

```swift
static var sizeDependent: SizeDependentTextVariant { get }
```

## Discussion

When a [Text](/documentation/swiftui/text) provides different size options for its content, the size dependent preference chooses the largest option that fits into the available space without truncating or clipping its content.

> [!NOTE]
> Only use this option where needed as it incurs a performance cost on every [Text](/documentation/swiftui/text) it is applied to, even if the concrete text initializer cannot provide multiple size variants and there is no visual impact.

## Difference to ViewThatFits

The [size Dependent](/documentation/swiftui/textvariantpreference/sizedependent) text variant preference differs from [View That Fits](/documentation/swiftui/viewthatfits) both in usage and in behavior. [View That Fits](/documentation/swiftui/viewthatfits) chooses the first child where the **ideal** size fits the available space. For [Text](/documentation/swiftui/text) this means that it will only choose texts that can fit their contents into the available space **without a line break**. With this text variant preference, on the other hand, the largest variant is chosen that can fit the available space while respecting all the regular layout rules, such as [line Limit](/documentation/swiftui/environmentvalues/linelimit).

To use [View That Fits](/documentation/swiftui/viewthatfits), multiple different views have to be provided as the different size options. With this text variant preference, a single [Text](/documentation/swiftui/text) provides the different size variants intrinsically. The way it generates these size variants and how many size variants are available depends on the text initializer used.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
