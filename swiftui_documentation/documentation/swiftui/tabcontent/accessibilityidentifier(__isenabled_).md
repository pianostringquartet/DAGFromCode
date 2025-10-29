---
title: accessibilityIdentifier(_:isEnabled:)
description: Uses the string you specify to identify the view. Use this value for testing. It isn’t visible to the user.
source: https://developer.apple.com/documentation/swiftui/tabcontent/accessibilityidentifier(_:isenabled:)
timestamp: 2025-10-29T00:15:04.217Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# accessibilityIdentifier(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Uses the string you specify to identify the view. Use this value for testing. It isn’t visible to the user.

```swift
nonisolated func accessibilityIdentifier(_ identifier: String, isEnabled: Bool = true) -> some TabContent<Self.TabValue>
```

## Parameters

**identifier**

The accessibility identifier to apply.



**isEnabled**

If true the accessibility identifier is applied; otherwise the accessibility identifier is unchanged.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
