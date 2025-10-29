---
title: systemAction
description: The handler asks the system to open the original URL.
source: https://developer.apple.com/documentation/swiftui/openurlaction/result/systemaction
timestamp: 2025-10-29T00:12:47.074Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openurlaction](/documentation/swiftui/openurlaction) › [result](/documentation/swiftui/openurlaction/result)

**Type Property**

# systemAction

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The handler asks the system to open the original URL.

```swift
static let systemAction: OpenURLAction.Result
```

## Discussion

The action invokes its completion handler with a value that depends on the outcome of the system’s attempt to open the URL.

## Getting the results

- [discarded](/documentation/swiftui/openurlaction/result/discarded)
- [handled](/documentation/swiftui/openurlaction/result/handled)
- [systemAction(_:)](/documentation/swiftui/openurlaction/result/systemaction(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
