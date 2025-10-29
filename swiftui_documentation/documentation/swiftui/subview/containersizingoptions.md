---
title: Subview.ContainerSizingOptions
description: Options on how all subviews should be sized when in a container.
source: https://developer.apple.com/documentation/swiftui/subview/containersizingoptions
timestamp: 2025-10-29T00:11:31.751Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [subview](/documentation/swiftui/subview)

**Enumeration**

# Subview.ContainerSizingOptions

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Options on how all subviews should be sized when in a container.

```swift
enum ContainerSizingOptions
```

## Overview

> [!NOTE]
> This option is not about the sizing considerations of a view being measured individually. Instead, this option describes the sizing characteristics of a group of subviews altogether, which also would only have actual effects when used in a container.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Enumeration Cases

- [Subview.ContainerSizingOptions.uniform(axis:)](/documentation/swiftui/subview/containersizingoptions/uniform(axis:)) Subviews will share the same size.
- [Subview.ContainerSizingOptions.variable](/documentation/swiftui/subview/containersizingoptions/variable) Subviews will be sized individually.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
