---
title: init(role:action:)
description: Creates a button that displays a default label.
source: https://developer.apple.com/documentation/swiftui/button/init(role:action:)
timestamp: 2025-10-29T00:12:09.351Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(role:action:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Creates a button that displays a default label.

```swift
@preconcurrency init(role: ButtonRole, action: @escaping @MainActor () -> Void)
```

## Parameters

**role**

A semantic role describing the button.



**action**

The action to perform when the user triggers the button.



## Discussion

For example, the following view would display a button with a ‘x’ symbol in the toolbar.

struct NewContactSheet: View { var body: some View { NavigationStack { NewContactEditor() .toolbar { Button(role: .cancel) { dismissView() } } } } }

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
