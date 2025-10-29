---
title: presentationBreakthroughEffect(_:)
description: Changes the way the enclosing presentation breaks through content occluding it.
source: https://developer.apple.com/documentation/swiftui/view/presentationbreakthrougheffect(_:)
timestamp: 2025-10-29T00:11:50.710Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationBreakthroughEffect(_:)

**Available on:** visionOS 26.0+

> Changes the way the enclosing presentation breaks through content occluding it.

```swift
nonisolated func presentationBreakthroughEffect(_ effect: BreakthroughEffect) -> some View
```

## Parameters

**effect**

The type of effect to apply when a presentation element is occluded by other content.



## Discussion

Use this modifier to disable or customize a breakthrough effect for the enclosing presentation.

Breakthrough is an effect allowing elements to be visible to the user even when other app content (3D models, UI elements) is occluding it. The way the element appears depends on the chosen [Breakthrough Effect](/documentation/swiftui/breakthrougheffect).

Most system presentations appear with a breakthrough effect by default. For these cases, the `presentationBreakthroughEffect` modifier allows customization of the type of effect. This is achieved by applying the modifier to the content of the presentation:

```swift
Button("Show Details") {
    isShowingDetails = true
}
.popover(isPresented: $isShowingDetails) {
    DetailsView()
        .presentationBreakthroughEffect(.prominent)
}
```

Only popovers allow breakthrough to be disabled altogether. Passing a `.none` value for a sheet doesn’t have any effect.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
