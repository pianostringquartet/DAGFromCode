---
title: ResetFocusAction
description: An environment value that provides the ability to reevaluate default focus.
source: https://developer.apple.com/documentation/swiftui/resetfocusaction
timestamp: 2025-10-29T00:09:32.486Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ResetFocusAction

**Available on:** macOS 12.0+, tvOS 14.0+, watchOS 7.0+

> An environment value that provides the ability to reevaluate default focus.

```swift
struct ResetFocusAction
```

## Overview

Get the [reset Focus](/documentation/swiftui/environmentvalues/resetfocus) environment value and call it as a function to force a default focus reevaluation at runtime.

```swift
@Namespace var mainNamespace
@Environment(\.resetFocus) var resetFocus

var body: some View {
    // ...
    resetFocus(in: mainNamespace)
    // ...
}
```

## Calling the action

- [callAsFunction(in:)](/documentation/swiftui/resetfocusaction/callasfunction(in:)) Asks the focus sytem to reevaluate the default focus item.

## Resetting focus

- [resetFocus](/documentation/swiftui/environmentvalues/resetfocus)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
