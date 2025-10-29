---
title: journalingSuggestionsPicker(isPresented:onCompletion:)
description: Presents a visual picker interface that contains events and images that a person can select to retrieve more information.
source: https://developer.apple.com/documentation/swiftui/view/journalingsuggestionspicker(ispresented:oncompletion:)
timestamp: 2025-10-29T00:09:16.415Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# journalingSuggestionsPicker(isPresented:onCompletion:)

**Available on:** iOS 17.2+, iPadOS 17.2+

> Presents a visual picker interface that contains events and images that a person can select to retrieve more information.

```swift
@MainActor @preconcurrency func journalingSuggestionsPicker(isPresented: Binding<Bool>, onCompletion: @escaping (JournalingSuggestion) async -> Void) -> some View
```

## Parameters

**isPresented**

A binding to a `Bool` value that determines whether to show the picker.



**onCompletion**

Code that you supply, which processes any suggestions that a person may choose in the picker.



## Discussion

For more information about the Journaling Suggestions picker, see: doc:presenting-the-suggestions-picker-and-processing-a-selection.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
