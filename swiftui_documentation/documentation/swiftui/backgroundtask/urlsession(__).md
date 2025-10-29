---
title: urlSession(_:)
description: A task that responds to background URL sessions matching the given identifier.
source: https://developer.apple.com/documentation/swiftui/backgroundtask/urlsession(_:)
timestamp: 2025-10-29T00:09:12.764Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [backgroundtask](/documentation/swiftui/backgroundtask)

**Type Method**

# urlSession(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A task that responds to background URL sessions matching the given identifier.

```swift
static func urlSession(_ identifier: String) -> BackgroundTask<Void, Void>
```

## Parameters

**identifier**

The identifier to match.



## Return Value

A background task that you can handle with your app or extension.

## Responding to URL sessions

- [urlSession](/documentation/swiftui/backgroundtask/urlsession)
- [urlSession(matching:)](/documentation/swiftui/backgroundtask/urlsession(matching:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
