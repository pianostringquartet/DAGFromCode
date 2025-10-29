---
title: subscript(_:)
description: Gets the value for the subview that’s associated with the specified key.
source: https://developer.apple.com/documentation/swiftui/layoutsubview/subscript(_:)
timestamp: 2025-10-29T00:10:20.511Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutsubview](/documentation/swiftui/layoutsubview)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Gets the value for the subview that’s associated with the specified key.

```swift
subscript<K>(key: K.Type) -> K.Value where K : LayoutValueKey { get }
```

## Overview

If you define a custom layout value using [Layout Value Key](/documentation/swiftui/layoutvaluekey), you can read the key’s associated value for a given subview in a layout container by indexing the container’s subviews with the key type. For example, if you define a `Flexibility` key type, you can put the associated values of all the layout’s subviews into an array:

```swift
let flexibilities = subviews.map { subview in
    subview[Flexibility.self]
}
```

For more information about creating a custom layout, see [Layout](/documentation/swiftui/layout).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
