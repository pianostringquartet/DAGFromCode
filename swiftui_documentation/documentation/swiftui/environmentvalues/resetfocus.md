---
title: resetFocus
description: An action that requests the focus system to reevaluate default focus.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/resetfocus
timestamp: 2025-10-29T00:10:52.669Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# resetFocus

**Available on:** macOS 12.0+, tvOS 14.0+, watchOS 7.0+

> An action that requests the focus system to reevaluate default focus.

```swift
var resetFocus: ResetFocusAction { get }
```

## Discussion

Get this environment value and call and call it as a function to force a default focus reevaluation at runtime.

```swift
@Namespace var mainNamespace
@Environment(\.resetFocus) var resetFocus

var body: some View {
    // ...
    resetFocus(in: mainNamespace)
    // ...
}
```

## Resetting focus

- [ResetFocusAction](/documentation/swiftui/resetfocusaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
