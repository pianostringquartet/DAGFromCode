---
title: makeBody(configuration:)
description: Creates a view that represents the body of a button.
source: https://developer.apple.com/documentation/swiftui/linkbuttonstyle/makebody(configuration:)
timestamp: 2025-10-29T00:14:41.935Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [linkbuttonstyle](/documentation/swiftui/linkbuttonstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** macOS 10.15+

> Creates a view that represents the body of a button.

```swift
@MainActor @preconcurrency func makeBody(configuration: LinkButtonStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the button.



## Discussion

The system calls this method for each [Button](/documentation/swiftui/button) instance in a view hierarchy where this style is the current button style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
