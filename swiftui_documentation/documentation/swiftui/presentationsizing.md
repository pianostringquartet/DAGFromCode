---
title: PresentationSizing
description: A type that defines the size of the presentation content and how the presentation size adjusts to its content’s size changing.
source: https://developer.apple.com/documentation/swiftui/presentationsizing
timestamp: 2025-10-29T00:10:39.103Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# PresentationSizing

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that defines the size of the presentation content and how the presentation size adjusts to its content’s size changing.

```swift
protocol PresentationSizing
```

## Overview

You don’t need to define your own version of this protocol. The system implementations of [form](/documentation/swiftui/presentationsizing/form), [page](/documentation/swiftui/presentationsizing/page), and [fitted](/documentation/swiftui/presentationsizing/fitted) are conveniences that automatically adapt to different device and screen sizes. If you do want to define your own sizing, first consider using the modifiers `PresenationSizing/sticky(horizontal:vertical:)` and [fitted(horizontal:vertical:)](/documentation/swiftui/presentationsizing/fitted(horizontal:vertical:)). For example, to define your own sizing that proposes a 400x400 square size:

```swift
protocol SquareSizing: PresentationSizing {
    func proposedSize(
        for subview: PresentationSizingRoot,
        context: PresentationSizingContext
    ) {
        .init(width: 400, height: 400)
    }
}

extension PresentationSizing where Self == SquareSizing {
    public static var square: Self { SquareSizing() }
}
```

Then, at the callsite, you can modify `.square` just like system sizings, for example, to fit its content vertically:

```swift
.presentationSizing(.square.fitted(horizontal: false, vertical: true))
```

> [!NOTE]
> [presentationSizing(_:)](/documentation/swiftui/view/presentationsizing(_:))

## Conforming Types

- [AutomaticPresentationSizing](/documentation/swiftui/automaticpresentationsizing)
- [FittedPresentationSizing](/documentation/swiftui/fittedpresentationsizing)
- [FormPresentationSizing](/documentation/swiftui/formpresentationsizing)
- [PagePresentationSizing](/documentation/swiftui/pagepresentationsizing)

## Getting built-in presentation size

- [automatic](/documentation/swiftui/presentationsizing/automatic) The default presentation sizing, appropriate for the platform.
- [fitted](/documentation/swiftui/presentationsizing/fitted) The presentation sizing is dictated by the ideal size of the content
- [form](/documentation/swiftui/presentationsizing/form) The size is appropriate for forms and slightly less wide than
- [page](/documentation/swiftui/presentationsizing/page) The size is roughly the size of a page of paper, appropriate for informational or compositional content.

## Creating custom presentation size

- [fitted(horizontal:vertical:)](/documentation/swiftui/presentationsizing/fitted(horizontal:vertical:))
- [proposedSize(for:context:)](/documentation/swiftui/presentationsizing/proposedsize(for:context:))
- [sticky(horizontal:vertical:)](/documentation/swiftui/presentationsizing/sticky(horizontal:vertical:)) Modifies self to be sticky in the specified dimensions — growing, but not shrinking.

## Supporting types

- [AutomaticPresentationSizing](/documentation/swiftui/automaticpresentationsizing) The default presentation sizing, appropriate for the platform.
- [FittedPresentationSizing](/documentation/swiftui/fittedpresentationsizing) The size of the presentation is dictated by the ideal size of the content.
- [FormPresentationSizing](/documentation/swiftui/formpresentationsizing) The size is appropriate for forms and slightly less wide than
- [PagePresentationSizing](/documentation/swiftui/pagepresentationsizing) The size is roughly the size of a page of paper, appropriate for informational or compositional content.

## Adapting a presentation size

- [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:))
- [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:))
- [PresentationAdaptation](/documentation/swiftui/presentationadaptation)
- [presentationSizing(_:)](/documentation/swiftui/view/presentationsizing(_:))
- [PresentationSizingRoot](/documentation/swiftui/presentationsizingroot)
- [PresentationSizingContext](/documentation/swiftui/presentationsizingcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
