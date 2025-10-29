---
title: OpenURLAction.Result
description: The result of a custom open URL action.
source: https://developer.apple.com/documentation/swiftui/openurlaction/result
timestamp: 2025-10-29T00:14:09.469Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openurlaction](/documentation/swiftui/openurlaction)

**Structure**

# OpenURLAction.Result

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The result of a custom open URL action.

```swift
struct Result
```

## Overview

If you declare a custom [Open URLAction](/documentation/swiftui/openurlaction) in the [Environment](/documentation/swiftui/environment), return one of the result values from its handler.

- Use [handled](/documentation/swiftui/openurlaction/result/handled) to indicate that the handler opened the URL.
- Use [discarded](/documentation/swiftui/openurlaction/result/discarded) to indicate that the handler discarded the URL.
- Use [system Action](/documentation/swiftui/openurlaction/result/systemaction) without an argument to ask SwiftUI to open the URL with the system handler.
- Use [systemAction(_:)](/documentation/swiftui/openurlaction/result/systemaction(_:)) with a URL argument to ask SwiftUI to open the specified URL with the system handler.

You can use the last option to transform URLs, while still relying on the system to open the URL. For example, you could append a path component to every URL:

```swift
.environment(\.openURL, OpenURLAction { url in
    .systemAction(url.appendingPathComponent("edit"))
})
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the results

- [discarded](/documentation/swiftui/openurlaction/result/discarded) The handler discarded the URL.
- [handled](/documentation/swiftui/openurlaction/result/handled) The handler opened the URL.
- [systemAction](/documentation/swiftui/openurlaction/result/systemaction) The handler asks the system to open the original URL.
- [systemAction(_:)](/documentation/swiftui/openurlaction/result/systemaction(_:)) The handler asks the system to open the modified URL.

## Type Methods

- [systemAction(_:prefersInApp:)](/documentation/swiftui/openurlaction/result/systemaction(_:prefersinapp:))

## Creating the action

- [init(handler:)](/documentation/swiftui/openurlaction/init(handler:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
