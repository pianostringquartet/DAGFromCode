---
title: breakthroughEffect(_:)
description: Ensures that the view is always visible to the user, even when other content is occluding it, like 3D models.
source: https://developer.apple.com/documentation/swiftui/view/breakthrougheffect(_:)
timestamp: 2025-10-29T00:09:28.488Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# breakthroughEffect(_:)

**Available on:** visionOS 26.0+

> Ensures that the view is always visible to the user, even when other content is occluding it, like 3D models.

```swift
nonisolated func breakthroughEffect(_ effect: BreakthroughEffect) -> some View
```

## Parameters

**effect**

The type of effect to apply when the view is occluded by other content.



## Discussion

Breakthrough is an effect allowing elements to be visible to the user even when other app content (3D models, UI elements) is positioned in front. The way the element breaks through content in front depends on the chosen [Breakthrough Effect](/documentation/swiftui/breakthrougheffect).

This modifier can be used in a number of scenarios, including ornaments and `RealityView` attachments to have them break through in their entirety.

### Regular Elements

To have SwiftUI element break through content in front, apply the `breakthroughEffect` modifier directly to the View:

```swift
ResizeHandle()
    .breakthroughEffect(.subtle)
```

### Ornaments

When applied to the whole content of an ornament, the ornament (including its background) will break through content in front:

```swift
Text("A view with an ornament")
    .ornament(attachmentAnchor: .scene(.bottom)) {
        OrnamentContent()
            .glassBackgroundEffect()
            .breakthroughEffect(.prominent)
    }
```

### RealityView Attachments

Similarly, a `RealityView` `Attachment` can break through other entities in the RealityView, including the entity it is attached to:

```swift
Attachment(id: "example") {
    AttachmentContent()
        .breakthroughEffect(.subtle)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
