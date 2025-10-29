---
title: PopoverAttachmentAnchor
description: An attachment anchor for a popover.
source: https://developer.apple.com/documentation/swiftui/popoverattachmentanchor
timestamp: 2025-10-29T00:14:11.924Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# PopoverAttachmentAnchor

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An attachment anchor for a popover.

```swift
enum PopoverAttachmentAnchor
```

## Getting attachment anchors

- [PopoverAttachmentAnchor.point(_:)](/documentation/swiftui/popoverattachmentanchor/point(_:)) The anchor point for the popover expressed as a unit point  that describes possible alignments relative to a SwiftUI view.
- [PopoverAttachmentAnchor.rect(_:)](/documentation/swiftui/popoverattachmentanchor/rect(_:)) The anchor point for the popover relative to the source’s frame.

## Showing a sheet, cover, or popover

- [sheet(isPresented:onDismiss:content:)](/documentation/swiftui/view/sheet(ispresented:ondismiss:content:))
- [sheet(item:onDismiss:content:)](/documentation/swiftui/view/sheet(item:ondismiss:content:))
- [fullScreenCover(isPresented:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(ispresented:ondismiss:content:))
- [fullScreenCover(item:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(item:ondismiss:content:))
- [popover(item:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(item:attachmentanchor:arrowedge:content:))
- [popover(isPresented:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(ispresented:attachmentanchor:arrowedge:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
