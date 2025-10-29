---
title: makeNSView(context:)
description: Creates the view object and configures its initial state.
source: https://developer.apple.com/documentation/swiftui/nsviewrepresentable/makensview(context:)
timestamp: 2025-10-29T00:10:22.940Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewrepresentable](/documentation/swiftui/nsviewrepresentable)

**Instance Method**

# makeNSView(context:)

**Available on:** macOS 10.15+

> Creates the view object and configures its initial state.

```swift
@MainActor @preconcurrency func makeNSView(context: Self.Context) -> Self.NSViewType
```

## Parameters

**context**

A context structure containing information about the current state of the system.



## Return Value

Your AppKit view configured with the provided information.

## Discussion

You must implement this method and use it to create your view object. Configure the view using your app’s current data and contents of the `context` parameter. The system calls this method only once, when it creates your view for the first time. For all subsequent updates, the system calls the [updateNSView(_:context:)](/documentation/swiftui/nsviewrepresentable/updatensview(_:context:)) method.

## Creating and updating the view

- [updateNSView(_:context:)](/documentation/swiftui/nsviewrepresentable/updatensview(_:context:))
- [NSViewRepresentable.Context](/documentation/swiftui/nsviewrepresentable/context)
- [NSViewType](/documentation/swiftui/nsviewrepresentable/nsviewtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
