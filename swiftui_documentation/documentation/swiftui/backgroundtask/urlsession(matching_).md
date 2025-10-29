---
title: urlSession(matching:)
description: A task that responds to background URL sessions matching the given predicate.
source: https://developer.apple.com/documentation/swiftui/backgroundtask/urlsession(matching:)
timestamp: 2025-10-29T00:14:12.687Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [backgroundtask](/documentation/swiftui/backgroundtask)

**Type Method**

# urlSession(matching:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A task that responds to background URL sessions matching the given predicate.

```swift
static func urlSession(matching: @escaping (String) -> Bool) -> BackgroundTask<String, Void>
```

## Parameters

**matching**

The predicate to match.



## Return Value

A background task that you can handle with your app or extension.

## Responding to URL sessions

- [urlSession](/documentation/swiftui/backgroundtask/urlsession)
- [urlSession(_:)](/documentation/swiftui/backgroundtask/urlsession(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
