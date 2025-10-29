---
title: subscript(visibility:)
description: The visibility of the column identified by its identifier.
source: https://developer.apple.com/documentation/swiftui/tablecolumncustomization/subscript(visibility:)
timestamp: 2025-10-29T00:10:24.454Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumncustomization](/documentation/swiftui/tablecolumncustomization)

**Instance Subscript**

# subscript(visibility:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The visibility of the column identified by its identifier.

```swift
subscript(visibility id: String) -> Visibility { get set }
```

## Overview

Explicit identifiers can be associated with a `TableColumn` using the `customizationID(_:)` modifier.

```swift
TableColumn("Number of Reports", value: \.duplicateCount) {
    Text($0.duplicateCount, format: .number)
}
.customizationID("numberOfReports")

...

columnsCustomization[visibility: "numberOfReports"] = .hidden
```

If the ID isn’t associated with the state, a default value of `.automatic` is returned.

## Managing the customization

- [resetOrder()](/documentation/swiftui/tablecolumncustomization/resetorder())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
