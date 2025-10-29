---
title: submitLabel(_:)
description: Sets the submit label for this view.
source: https://developer.apple.com/documentation/swiftui/view/submitlabel(_:)
timestamp: 2025-10-29T00:13:30.729Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# submitLabel(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the submit label for this view.

```swift
nonisolated func submitLabel(_ submitLabel: SubmitLabel) -> some View
```

## Parameters

**submitLabel**

One of the cases specified in [Submit Label](/documentation/swiftui/submitlabel).



## Discussion

```swift
Form {
    TextField("Username", $viewModel.username)
        .submitLabel(.continue)
    SecureField("Password", $viewModel.password)
        .submitLabel(.done)
}
```

## Labeling a submission event

- [SubmitLabel](/documentation/swiftui/submitlabel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
