---
title: enabled(upThrough:)
description: People can interact with the view behind a presentation up through a specified detent.
source: https://developer.apple.com/documentation/swiftui/presentationbackgroundinteraction/enabled(upthrough:)
timestamp: 2025-10-29T00:11:36.796Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [presentationbackgroundinteraction](/documentation/swiftui/presentationbackgroundinteraction)

**Type Method**

# enabled(upThrough:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> People can interact with the view behind a presentation up through a specified detent.

```swift
static func enabled(upThrough detent: PresentationDetent) -> PresentationBackgroundInteraction
```

## Parameters

**detent**

The largest detent at which people can interact with the view behind the presentation.



## Discussion

At detents larger than the one you specify, SwiftUI disables interaction.

## Getting interaction types

- [automatic](/documentation/swiftui/presentationbackgroundinteraction/automatic)
- [disabled](/documentation/swiftui/presentationbackgroundinteraction/disabled)
- [enabled](/documentation/swiftui/presentationbackgroundinteraction/enabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
