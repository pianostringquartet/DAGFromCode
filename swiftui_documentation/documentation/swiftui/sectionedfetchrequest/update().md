---
title: update()
description: Updates the fetched results.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/update()
timestamp: 2025-10-29T00:14:30.708Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest)

**Instance Method**

# update()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Updates the fetched results.

```swift
@MainActor @preconcurrency func update()
```

## Discussion

SwiftUI calls this function before rendering a view’s [body](/documentation/swiftui/view/body-8kl5o) to ensure the view has the most recent fetched results.

## Getting the fetched results

- [wrappedValue](/documentation/swiftui/sectionedfetchrequest/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
