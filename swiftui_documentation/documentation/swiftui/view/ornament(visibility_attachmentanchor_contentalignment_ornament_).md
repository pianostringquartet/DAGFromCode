---
title: ornament(visibility:attachmentAnchor:contentAlignment:ornament:)
description: Presents an ornament.
source: https://developer.apple.com/documentation/swiftui/view/ornament(visibility:attachmentanchor:contentalignment:ornament:)
timestamp: 2025-10-29T00:14:28.976Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# ornament(visibility:attachmentAnchor:contentAlignment:ornament:)

**Available on:** visionOS 1.0+

> Presents an ornament.

```swift
nonisolated func ornament<Content>(visibility: Visibility = .automatic, attachmentAnchor: OrnamentAttachmentAnchor, contentAlignment: Alignment = .center, @ViewBuilder ornament: () -> Content) -> some View where Content : View
```

## Parameters

**visibility**

The visibility of the ornament.



**attachmentAnchor**

The positioning anchor that defines the attachment point of the ornament.



**contentAlignment**

The alignment of the ornament with its attachment anchor.



## Discussion

Use this method to show an ornament at the specified position. The example below displays an ornament below the window:

```swift
Text("A view with an ornament")
    .ornament(attachmentAnchor: .scene(.bottom)) {
        OrnamentContent()
    }
```

## Creating an ornament

- [OrnamentAttachmentAnchor](/documentation/swiftui/ornamentattachmentanchor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
