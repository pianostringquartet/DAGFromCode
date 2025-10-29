---
title: automatic
description: The automatic role. The type and configuration of the scene will be used to determine how its windows behave in full screen and Stage Manager.
source: https://developer.apple.com/documentation/swiftui/windowmanagerrole/automatic
timestamp: 2025-10-29T00:11:46.521Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowmanagerrole](/documentation/swiftui/windowmanagerrole)

**Type Property**

# automatic

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The automatic role. The type and configuration of the scene will be used to determine how its windows behave in full screen and Stage Manager.

```swift
static let automatic: WindowManagerRole
```

## Discussion

On macOS, [Window Group](/documentation/swiftui/windowgroup) and [Document Group](/documentation/swiftui/documentgroup) scenes will use the `principal` role. [Window](/documentation/swiftui/window) scenes will use the `principal` role when they are specified as the first scene in the app’s definition, and use the `associated` role otherwise. [Settings](/documentation/swiftui/settings) will use the `associated` role.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
