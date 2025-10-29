---
title: PresentationBackgroundInteraction
description: The kinds of interaction available to views behind a presentation.
source: https://developer.apple.com/documentation/swiftui/presentationbackgroundinteraction
timestamp: 2025-10-29T00:10:17.773Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PresentationBackgroundInteraction

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> The kinds of interaction available to views behind a presentation.

```swift
struct PresentationBackgroundInteraction
```

## Overview

Use values of this type with the [presentationBackgroundInteraction(_:)](/documentation/swiftui/view/presentationbackgroundinteraction(_:)) modifier.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting interaction types

- [automatic](/documentation/swiftui/presentationbackgroundinteraction/automatic) The default background interaction for the presentation.
- [disabled](/documentation/swiftui/presentationbackgroundinteraction/disabled) People can’t interact with the view behind a presentation.
- [enabled](/documentation/swiftui/presentationbackgroundinteraction/enabled) People can interact with the view behind a presentation.
- [enabled(upThrough:)](/documentation/swiftui/presentationbackgroundinteraction/enabled(upthrough:)) People can interact with the view behind a presentation up through a specified detent.

## Styling a sheet and its background

- [presentationCornerRadius(_:)](/documentation/swiftui/view/presentationcornerradius(_:))
- [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:))
- [presentationBackground(alignment:content:)](/documentation/swiftui/view/presentationbackground(alignment:content:))
- [presentationBackgroundInteraction(_:)](/documentation/swiftui/view/presentationbackgroundinteraction(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
