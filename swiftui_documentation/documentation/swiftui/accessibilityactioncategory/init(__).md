---
title: init(_:)
description: Creates a custom action category labeled by .
source: https://developer.apple.com/documentation/swiftui/accessibilityactioncategory/init(_:)
timestamp: 2025-10-29T00:10:03.780Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityactioncategory](/documentation/swiftui/accessibilityactioncategory)

**Initializer**

# init(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a custom action category labeled by .

```swift
init(_ name: Text)
```

## Discussion

Extension AccessibilityActionCategory { static let table = AccessibilityActionCategory(“Table Options”) }

var body: some View { TableCellView() .accessibilityActions(category: .table) { ForEach(tableCellActions) { action in Button(action.title) { action() } } } }

- Parameter:

- name: The name for the category of the accessibility actions.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
