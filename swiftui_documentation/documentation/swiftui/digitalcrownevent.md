---
title: DigitalCrownEvent
description: An event emitted when the user rotates the Digital Crown.
source: https://developer.apple.com/documentation/swiftui/digitalcrownevent
timestamp: 2025-10-29T00:14:44.515Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DigitalCrownEvent

**Available on:** watchOS 9.0+

> An event emitted when the user rotates the Digital Crown.

```swift
struct DigitalCrownEvent
```

## Overview

Use the [digitalCrownRotation(_:)](/documentation/swiftui/view/digitalcrownrotation(_:)) modifier to receive these events.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting events

- [offset](/documentation/swiftui/digitalcrownevent/offset) The offset of the digital crown when this event was sent.
- [velocity](/documentation/swiftui/digitalcrownevent/velocity) The velocity at which the offset was changing when this event was sent.

## Interacting with the Digital Crown

- [digitalCrownAccessory(_:)](/documentation/swiftui/view/digitalcrownaccessory(_:))
- [digitalCrownAccessory(content:)](/documentation/swiftui/view/digitalcrownaccessory(content:))
- [digitalCrownRotation(_:from:through:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:))
- [digitalCrownRotation(_:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:onchange:onidle:))
- [digitalCrownRotation(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(detent:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:))
- [digitalCrownRotation(_:)](/documentation/swiftui/view/digitalcrownrotation(_:))
- [digitalCrownRotation(_:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:))
- [DigitalCrownRotationalSensitivity](/documentation/swiftui/digitalcrownrotationalsensitivity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
