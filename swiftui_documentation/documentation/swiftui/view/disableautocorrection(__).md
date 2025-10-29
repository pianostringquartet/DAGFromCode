---
title: disableAutocorrection(_:)
description: Sets whether to disable autocorrection for this view.
source: https://developer.apple.com/documentation/swiftui/view/disableautocorrection(_:)
timestamp: 2025-10-29T00:12:05.870Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# disableAutocorrection(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 8.0+

> Sets whether to disable autocorrection for this view.

```swift
nonisolated func disableAutocorrection(_ disable: Bool?) -> some View
```

## Discussion

Use this method when the effect of autocorrection would make it more difficult for the user to input information. The entry of proper names and street addresses are examples where autocorrection can negatively affect the user’s ability complete a data entry task.

In the example below configures a [Text Field](/documentation/swiftui/textfield) with the default keyboard. Disabling autocorrection allows the user to enter arbitrary text without the autocorrection system offering suggestions or attempting to override their input.

```swift
TextField("1234 Main St.", text: $address)
    .keyboardType(.default)
    .disableAutocorrection(true)
```

## Text modifiers

- [autocapitalization(_:)](/documentation/swiftui/view/autocapitalization(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
