---
title: submitScope(_:)
description: Prevents submission triggers originating from this view to invoke a submission action configured by a submission modifier higher up in the view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/submitscope(_:)
timestamp: 2025-10-29T00:10:14.484Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# submitScope(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Prevents submission triggers originating from this view to invoke a submission action configured by a submission modifier higher up in the view hierarchy.

```swift
nonisolated func submitScope(_ isBlocking: Bool = true) -> some View
```

## Parameters

**isBlocking**

A Boolean that indicates whether this scope is actively blocking submission triggers from reaching higher submission actions.



## Discussion

Use this modifier when you want to avoid specific views from initiating a submission action configured by the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier. In the example below, the tag field doesn’t trigger the submission of the form:

```swift
Form {
    TextField("Username", text: $viewModel.userName)
    SecureField("Password", text: $viewModel.password)

    TextField("Tags", text: $viewModel.tags)
        .submitScope()
}
.onSubmit {
    guard viewModel.validate() else { return }
    viewModel.login()
}
```

## Responding to submission events

- [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:))
- [SubmitTriggers](/documentation/swiftui/submittriggers)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
