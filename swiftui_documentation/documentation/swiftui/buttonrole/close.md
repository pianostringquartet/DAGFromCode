---
title: close
description: A role that indicates a button that closes the current operation.
source: https://developer.apple.com/documentation/swiftui/buttonrole/close
timestamp: 2025-10-29T00:13:53.390Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [buttonrole](/documentation/swiftui/buttonrole)

**Type Property**

# close

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A role that indicates a button that closes the current operation.

```swift
static let close: ButtonRole
```

## Discussion

Unlike a cancel operation, a close operation doesn’t lose progress for a user.

The following view would display a close button in the toolbar.

```swift
struct NewContactSheet: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            NewContactEditor()
                .toolbar {
                    Button(role: .close) {
                        dismiss()
                    }
                }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
