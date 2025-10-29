---
title: journalingSuggestionsPicker(isPresented:journalingSuggestionToken:onCompletion:)
description: Presents a visual picker interface that contains events and images that a person can select to retrieve more information.
source: https://developer.apple.com/documentation/swiftui/view/journalingsuggestionspicker(ispresented:journalingsuggestiontoken:oncompletion:)
timestamp: 2025-10-29T00:12:13.272Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# journalingSuggestionsPicker(isPresented:journalingSuggestionToken:onCompletion:)

**Available on:** iOS 26.0+, iPadOS 26.0+

> Presents a visual picker interface that contains events and images that a person can select to retrieve more information.

```swift
@MainActor @preconcurrency func journalingSuggestionsPicker(isPresented: Binding<Bool>, journalingSuggestionToken: JournalingSuggestionPresentationToken?, onCompletion: @escaping (JournalingSuggestion) async -> Void) -> some View
```

## Parameters

**isPresented**

A binding to a `Bool` value that determines whether to show the picker.



**journalingSuggestionToken**

A `JournalingSuggestionPresentationToken` struct to determine the content shown in the picker.



**onCompletion**

Code that you supply, which processes any suggestions that a person may choose in the picker.



## Discussion

For more information about the Journaling Suggestions picker, see: doc:presenting-the-suggestions-picker-and-processing-a-selection.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
