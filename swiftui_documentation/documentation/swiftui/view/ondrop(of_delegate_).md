---
title: onDrop(of:delegate:)
description: Defines the destination of a drag and drop operation using behavior controlled by the delegate that you provide.
source: https://developer.apple.com/documentation/swiftui/view/ondrop(of:delegate:)
timestamp: 2025-10-29T00:11:47.246Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onDrop(of:delegate:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Defines the destination of a drag and drop operation using behavior controlled by the delegate that you provide.

```swift
nonisolated func onDrop(of supportedContentTypes: [UTType], delegate: any DropDelegate) -> some View
```

## Parameters

**supportedContentTypes**

The uniform type identifiers that describe the types of content this view can accept through drag and drop. If the drag and drop operation doesn’t contain any of the supported types, then this drop destination doesn’t activate and `isTargeted` doesn’t update.



**delegate**

A type that conforms to the [Drop Delegate](/documentation/swiftui/dropdelegate) protocol. You have comprehensive control over drop behavior when you use a delegate.



## Return Value

A view that provides a drop destination for a drag operation of the specified types.

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:))
- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:))
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [DropDelegate](/documentation/swiftui/dropdelegate)
- [DropProposal](/documentation/swiftui/dropproposal)
- [DropOperation](/documentation/swiftui/dropoperation)
- [DropInfo](/documentation/swiftui/dropinfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
