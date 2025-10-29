---
title: DialogSeverity
description: The severity of an alert or confirmation dialog.
source: https://developer.apple.com/documentation/swiftui/dialogseverity
timestamp: 2025-10-29T00:11:06.953Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DialogSeverity

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The severity of an alert or confirmation dialog.

```swift
struct DialogSeverity
```

## Overview

You can use dialog severity to indicate that people need to take extra care when interacting with the dialog, like when an action taken from the dialog permanently deletes data.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting severities

- [automatic](/documentation/swiftui/dialogseverity/automatic) The default dialog severity. Alerts that present an error will use  and all others will use .
- [standard](/documentation/swiftui/dialogseverity/standard) A severity that indicates the dialog is being displayed for the purpose of presenting information to the user.
- [critical](/documentation/swiftui/dialogseverity/critical) A severity that indicates extra attention should be given to the dialog, for example when unexpected data loss may occur as a result of the action taken.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
