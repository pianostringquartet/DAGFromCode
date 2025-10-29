---
title: complicationForeground()
description: Promotes this view to the foreground in a complication.
source: https://developer.apple.com/documentation/swiftui/view/complicationforeground()
timestamp: 2025-10-29T00:09:47.190Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# complicationForeground()

**Available on:** watchOS 7.0+

> Promotes this view to the foreground in a complication.

```swift
@MainActor @preconcurrency func complicationForeground() -> some View
```

## Return Value

A view that is in the complication foreground.

## Discussion

A view in the foreground will be tinted alongside other foreground views. The color for both the foreground and background layers is determined by the watch face.

## Appearance modifiers

- [colorScheme(_:)](/documentation/swiftui/view/colorscheme(_:))
- [listRowPlatterColor(_:)](/documentation/swiftui/view/listrowplattercolor(_:))
- [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:))
- [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:))
- [foregroundColor(_:)](/documentation/swiftui/view/foregroundcolor(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
