---
title: foregroundColor(_:)
description: Sets the color of the foreground elements displayed by this view.
source: https://developer.apple.com/documentation/swiftui/view/foregroundcolor(_:)
timestamp: 2025-10-29T00:10:10.195Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# foregroundColor(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the color of the foreground elements displayed by this view.

```swift
nonisolated func foregroundColor(_ color: Color?) -> some View
```

## Parameters

**color**

The foreground color to use when displaying this view. Pass `nil` to remove any custom foreground color and to allow the system or the container to provide its own foreground color. If a container-specific override doesn’t exist, the system uses the primary color.



## Return Value

A view that uses the foreground color you supply.

## Appearance modifiers

- [colorScheme(_:)](/documentation/swiftui/view/colorscheme(_:))
- [listRowPlatterColor(_:)](/documentation/swiftui/view/listrowplattercolor(_:))
- [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:))
- [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:))
- [complicationForeground()](/documentation/swiftui/view/complicationforeground())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
