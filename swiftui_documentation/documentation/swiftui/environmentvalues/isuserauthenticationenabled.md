---
title: isUserAuthenticationEnabled
description: The current system user authentication enablement status.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/isuserauthenticationenabled
timestamp: 2025-10-29T00:12:23.436Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# isUserAuthenticationEnabled

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The current system user authentication enablement status.

```swift
var isUserAuthenticationEnabled: Bool { get }
```

## Discussion

Use this value to determine whether the system will issue additional device-owner authentication challenges before revealing this piece of user interface from under a system-installed shield.

Your app can respond to changes in this value to take appropriate action, like installing or uninstalling a bespoke UI shield for sensitive content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
