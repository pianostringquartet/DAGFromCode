---
title: confirm
description: A role that indicates a button that confirms an operation.
source: https://developer.apple.com/documentation/swiftui/buttonrole/confirm
timestamp: 2025-10-29T00:13:16.068Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [buttonrole](/documentation/swiftui/buttonrole)

**Type Property**

# confirm

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A role that indicates a button that confirms an operation.

```swift
static let confirm: ButtonRole
```

## Discussion

The following view would display a confirm button in the toolbar.

```swift
struct NewContactSheet: View {
    var body: some View {
        NavigationStack {
            NewContactEditor()
                .toolbar {
                    Button(role: .confirm) {
                        saveChanges()
                    }
                }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
