---
title: MaterialActiveAppearance
description: The behavior for how materials appear active and inactive.
source: https://developer.apple.com/documentation/swiftui/materialactiveappearance
timestamp: 2025-10-29T00:12:34.114Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MaterialActiveAppearance

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The behavior for how materials appear active and inactive.

```swift
struct MaterialActiveAppearance
```

## Overview

On macOS, materials have active and inactive appearances that can reinforce the active appearance of the window they are in:

- Materials used as a `window` container background and `bar` materials will appear inactive when their containing window is inactive.
- All other materials will always appear active by default.

An explicit active appearance can be set to override a material’s default behavior. For example, materials used as the `window` container background can be made to always appear active by setting the active appearance behavior to be always active:

```swift
Text("Hello, World!")
    .containerBackground(
        Material.regular.materialActiveAppearance(.active),
        for: .window)
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [active](/documentation/swiftui/materialactiveappearance/active) Materials will always appear active.
- [automatic](/documentation/swiftui/materialactiveappearance/automatic) Materials will automatically appear active or inactive based on context and platform convention.
- [inactive](/documentation/swiftui/materialactiveappearance/inactive) Materials will always appear inactive.
- [matchWindow](/documentation/swiftui/materialactiveappearance/matchwindow) Materials will have an active or inactive appearance based on the active appearance of their window.

## Transforming colors

- [brightness(_:)](/documentation/swiftui/view/brightness(_:))
- [contrast(_:)](/documentation/swiftui/view/contrast(_:))
- [colorInvert()](/documentation/swiftui/view/colorinvert())
- [colorMultiply(_:)](/documentation/swiftui/view/colormultiply(_:))
- [saturation(_:)](/documentation/swiftui/view/saturation(_:))
- [grayscale(_:)](/documentation/swiftui/view/grayscale(_:))
- [hueRotation(_:)](/documentation/swiftui/view/huerotation(_:))
- [luminanceToAlpha()](/documentation/swiftui/view/luminancetoalpha())
- [materialActiveAppearance(_:)](/documentation/swiftui/view/materialactiveappearance(_:))
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
