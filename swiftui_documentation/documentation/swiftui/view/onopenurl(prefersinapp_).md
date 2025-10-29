---
title: onOpenURL(prefersInApp:)
description: Sets an  that prefers opening URL with an in-app browser. It’s equivalent to calling
source: https://developer.apple.com/documentation/swiftui/view/onopenurl(prefersinapp:)
timestamp: 2025-10-29T00:12:19.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onOpenURL(prefersInApp:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Sets an  that prefers opening URL with an in-app browser. It’s equivalent to calling 

```swift
@MainActor @preconcurrency func onOpenURL(prefersInApp: Bool) -> some View
```

## Discussion

```swift
.onOpenURL { _ in
    .systemAction(prefersInApp: prefersInApp)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
