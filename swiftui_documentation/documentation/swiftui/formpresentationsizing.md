---
title: FormPresentationSizing
description: The size is appropriate for forms and slightly less wide than
source: https://developer.apple.com/documentation/swiftui/formpresentationsizing
timestamp: 2025-10-29T00:09:36.965Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FormPresentationSizing

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The size is appropriate for forms and slightly less wide than

```swift
struct FormPresentationSizing
```

## Overview

On iOS, `.form` sizing enforces a platform-defined floor for the vertical and horizontal dimensions. On macOS, no floor is enforced, however a maximum proposed height is derived from the presenter height. To achieve presentations outside of these bounds, see `PresentationSizing.fitted` or implement your own custom [Presentation Sizing](/documentation/swiftui/presentationsizing).

> [!NOTE]
> [form](/documentation/swiftui/presentationsizing/form)

## Conforms To

- [PresentationSizing](/documentation/swiftui/presentationsizing)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Supporting types

- [AutomaticPresentationSizing](/documentation/swiftui/automaticpresentationsizing)
- [FittedPresentationSizing](/documentation/swiftui/fittedpresentationsizing)
- [PagePresentationSizing](/documentation/swiftui/pagepresentationsizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
