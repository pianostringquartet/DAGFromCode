---
title: DropSession
source: https://developer.apple.com/documentation/swiftui/dropsession
timestamp: 2025-10-29T00:15:18.816Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DropSession

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

```swift
struct DropSession
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [Identifiable](/documentation/Swift/Identifiable)

## Structures

- [DropSession.ID](/documentation/swiftui/dropsession/id-swift.struct) The identifier of a drag session.
- [DropSession.LocalSession](/documentation/swiftui/dropsession/localsession-swift.struct) Describes the session originated within the app.

## Instance Properties

- [id](/documentation/swiftui/dropsession/id-swift.property) The unique identifier of the drop session.
- [itemsCount](/documentation/swiftui/dropsession/itemscount) Number of items for the drop.
- [localSession](/documentation/swiftui/dropsession/localsession-swift.property) Provides additional information about a session if it originated within the app.
- [location](/documentation/swiftui/dropsession/location) Location of drop in the local coordinate space
- [phase](/documentation/swiftui/dropsession/phase-swift.property) The phase of the current drop session.
- [size](/documentation/swiftui/dropsession/size) Size of the drop destination view.
- [suggestedOperations](/documentation/swiftui/dropsession/suggestedoperations) Operations suggested by the drag source.

## Enumerations

- [DropSession.Phase](/documentation/swiftui/dropsession/phase-swift.enum) The phase of the current drop session.

## Moving items

- [DragSession](/documentation/swiftui/dragsession)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
