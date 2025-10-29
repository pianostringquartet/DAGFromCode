---
title: DropInfo
description: The current state of a drop.
source: https://developer.apple.com/documentation/swiftui/dropinfo
timestamp: 2025-10-29T00:11:50.067Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DropInfo

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> The current state of a drop.

```swift
struct DropInfo
```

## Getting the drop location

- [location](/documentation/swiftui/dropinfo/location) The location of the drag in the coordinate space of the drop view.

## Checking for items

- [hasItemsConforming(to:)](/documentation/swiftui/dropinfo/hasitemsconforming(to:)-47irh) Indicates whether at least one item conforms to at least one of the specified uniform type identifiers.
- [itemProviders(for:)](/documentation/swiftui/dropinfo/itemproviders(for:)-93409) Finds item providers that conform to at least one of the specified uniform type identifiers.

## Deprecated symbols

- [hasItemsConforming(to:)](/documentation/swiftui/dropinfo/hasitemsconforming(to:)-4qeez) Returns whether at least one item conforms to at least one of the specified uniform type identifiers.
- [itemProviders(for:)](/documentation/swiftui/dropinfo/itemproviders(for:)-b6fo) Returns an array of items that each conform to at least one of the specified uniform type identifiers.

## Instance Methods

- [hasItemsConforming(to:)](/documentation/swiftui/dropinfo/hasitemsconforming(to:)) Indicates whether at least one item conforms to at least one of the specified uniform type identifiers.
- [itemProviders(for:)](/documentation/swiftui/dropinfo/itemproviders(for:)) Finds item providers that conform to at least one of the specified uniform type identifiers.

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:))
- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:))
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:))
- [DropDelegate](/documentation/swiftui/dropdelegate)
- [DropProposal](/documentation/swiftui/dropproposal)
- [DropOperation](/documentation/swiftui/dropoperation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
