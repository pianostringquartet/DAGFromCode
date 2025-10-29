---
title: makeBody(configuration:)
description: Returns the appearance and interaction content for a .
source: https://developer.apple.com/documentation/swiftui/datepickerstyle/makebody(configuration:)
timestamp: 2025-10-29T00:09:41.674Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [datepickerstyle](/documentation/swiftui/datepickerstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 10.0+

> Returns the appearance and interaction content for a .

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Discussion

The system calls this method for each [Date Picker](/documentation/swiftui/datepicker) instance in a view hierarchy where this style is the current date picker style.

## Creating custom date picker styles

- [DatePickerStyleConfiguration](/documentation/swiftui/datepickerstyleconfiguration)
- [DatePickerStyle.Configuration](/documentation/swiftui/datepickerstyle/configuration)
- [Body](/documentation/swiftui/datepickerstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
