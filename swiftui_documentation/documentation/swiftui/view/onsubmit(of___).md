---
title: onSubmit(of:_:)
description: Adds an action to perform when the user submits a value to this view.
source: https://developer.apple.com/documentation/swiftui/view/onsubmit(of:_:)
timestamp: 2025-10-29T00:11:53.480Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onSubmit(of:_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds an action to perform when the user submits a value to this view.

```swift
nonisolated func onSubmit(of triggers: SubmitTriggers = .text, _ action: @escaping () -> Void) -> some View
```

## Parameters

**triggers**

The triggers that should invoke the provided action.



**action**

The action to perform on submission of a value.



## Discussion

Different views may have different triggers for the provided action. A [Text Field](/documentation/swiftui/textfield), or [Secure Field](/documentation/swiftui/securefield) will trigger this action when the user hits the hardware or software return key. This modifier may also bind this action to a default action keyboard shortcut. You may set this action on an individual view or an entire view hierarchy.

```swift
TextField("Username", text: $username)
    .onSubmit {
        guard viewModel.validate() else { return }
        viewModel.login()
    }
```

You can use the [submitScope(_:)](/documentation/swiftui/view/submitscope(_:)) modifier to stop a submit trigger from a control from propagating higher up in the view hierarchy to higher `View.onSubmit(of:_:)` modifiers.

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

You can use different submit triggers to filter the types of triggers that should invoke the provided submission action. For example, you may provide a value of [search](/documentation/swiftui/submittriggers/search) to only hear submission triggers that originate from search fields vended by searchable modifiers.

```swift
@StateObject private var viewModel = ViewModel()

NavigationView {
    SidebarView()
    DetailView()
}
.searchable(
    text: $viewModel.searchText,
    placement: .sidebar
) {
    SuggestionsView()
}
.onSubmit(of: .search) {
    viewModel.submitCurrentSearchQuery()
}
```

## Responding to submission events

- [submitScope(_:)](/documentation/swiftui/view/submitscope(_:))
- [SubmitTriggers](/documentation/swiftui/submittriggers)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
