---
title: init(_:text:onCommit:)
description: Creates an instance.
source: https://developer.apple.com/documentation/swiftui/securefield/init(_:text:oncommit:)
timestamp: 2025-10-29T00:09:20.923Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [securefield](/documentation/swiftui/securefield)

**Initializer**

# init(_:text:onCommit:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an instance.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, text: Binding<String>, onCommit: @escaping () -> Void)
```

## Parameters

**titleKey**

The key for the localized title of `self`, describing its purpose.



**text**

The text to display and edit.



**onCommit**

The action to perform when the user performs an action (usually pressing the Return key) while the secure field has focus.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
