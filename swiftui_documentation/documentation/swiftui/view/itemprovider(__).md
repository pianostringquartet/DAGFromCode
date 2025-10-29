---
title: itemProvider(_:)
description: Provides a closure that vends the drag representation to be used for a particular data element.
source: https://developer.apple.com/documentation/swiftui/view/itemprovider(_:)
timestamp: 2025-10-29T00:12:20.491Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# itemProvider(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Provides a closure that vends the drag representation to be used for a particular data element.

```swift
nonisolated func itemProvider(_ action: Optional<() -> NSItemProvider?>) -> some View
```

## Moving items using item providers

- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:))
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:))
- [DropDelegate](/documentation/swiftui/dropdelegate)
- [DropProposal](/documentation/swiftui/dropproposal)
- [DropOperation](/documentation/swiftui/dropoperation)
- [DropInfo](/documentation/swiftui/dropinfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
