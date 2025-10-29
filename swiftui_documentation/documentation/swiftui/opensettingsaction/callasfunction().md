---
title: callAsFunction()
description: Opens the window associated to the  scene defined by this app, if one exists.
source: https://developer.apple.com/documentation/swiftui/opensettingsaction/callasfunction()
timestamp: 2025-10-29T00:14:32.161Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [opensettingsaction](/documentation/swiftui/opensettingsaction)

**Instance Method**

# callAsFunction()

**Available on:** macOS 14.0+

> Opens the window associated to the  scene defined by this app, if one exists.

```swift
@MainActor @preconcurrency func callAsFunction()
```

## Discussion

Calling this action when the window is already open will order it to the front.

Don’t call this method directly. SwiftUI calls it when you call the [open Settings](/documentation/swiftui/environmentvalues/opensettings) action:

```swift
openSettings()
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
