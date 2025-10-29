---
title: allowsSelection
description: A Boolean value that indicates whether the selectability type allows selection.
source: https://developer.apple.com/documentation/swiftui/textselectability/allowsselection
timestamp: 2025-10-29T00:11:07.642Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textselectability](/documentation/swiftui/textselectability)

**Type Property**

# allowsSelection

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> A Boolean value that indicates whether the selectability type allows selection.

```swift
static var allowsSelection: Bool { get }
```

## Discussion

Conforming types, such as [Enabled Text Selectability](/documentation/swiftui/enabledtextselectability) and [Disabled Text Selectability](/documentation/swiftui/disabledtextselectability), return `true` or `false` for this property as appropriate. SwiftUI expects this value for a given selectability type to be constant, unaffected by global state.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
