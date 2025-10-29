---
title: SnapshotData.SnapshotReason
description: The reason for a background snapshot task.
source: https://developer.apple.com/documentation/swiftui/snapshotdata/snapshotreason
timestamp: 2025-10-29T00:11:57.759Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [snapshotdata](/documentation/swiftui/snapshotdata)

**Enumeration**

# SnapshotData.SnapshotReason

**Available on:** watchOS 9.0+

> The reason for a background snapshot task.

```swift
enum SnapshotReason
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the snapshot reasons

- [SnapshotData.SnapshotReason.appBackgrounded](/documentation/swiftui/snapshotdata/snapshotreason/appbackgrounded) The app transitioned from the foreground to the background.
- [SnapshotData.SnapshotReason.appScheduled](/documentation/swiftui/snapshotdata/snapshotreason/appscheduled) The app scheduled this snapshot.
- [SnapshotData.SnapshotReason.complicationUpdate](/documentation/swiftui/snapshotdata/snapshotreason/complicationupdate) The app updated the complication timeline.
- [SnapshotData.SnapshotReason.prelaunch](/documentation/swiftui/snapshotdata/snapshotreason/prelaunch) The system needs a snapshot for the dock, but the app has not been launched yet.
- [SnapshotData.SnapshotReason.returnToDefaultState](/documentation/swiftui/snapshotdata/snapshotreason/returntodefaultstate) It has been more than an hour since the user’s last interaction with the app; the app’s snapshot should return to its default state.

## Getting the data

- [identifier](/documentation/swiftui/snapshotdata/identifier)
- [reason](/documentation/swiftui/snapshotdata/reason)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
