---
title: HelpLink
description: A button with a standard appearance that opens app-specific help documentation.
source: https://developer.apple.com/documentation/swiftui/helplink
timestamp: 2025-10-29T00:13:28.203Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# HelpLink

**Available on:** macOS 14.0+

> A button with a standard appearance that opens app-specific help documentation.

```swift
struct HelpLink
```

## Overview

A help link opens documentation relevant to the context where they are used. Typically this is by opening to an anchor in an Apple Help book, but can also perform an arbitrary action such as opening a URL or opening a window.

```swift
HelpLink(anchor: "accountSetupHelp")

HelpLink {
    openURL(onlineHelpURL)
}
```

Help links have a standard appearance, as well as conventional placement within a view. When used within an alert or confirmation dialog’s actions, the help link will automatically be placed in the top trailing corner. Or when used in a sheet toolbar, the help link is automatically placed in the lower leading corner.

```swift
struct SheetContentView: View {
    var body: some View {
        Form {
             ...
        }
        .toolbar {
            ToolbarItem(.confirmationAction) {
                Button("Save") { ... }
            }
            ToolbarItem(.cancellationAction) {
                Button("Cancel") { ... }
            }
            ToolbarItem {
                HelpLink(anchor: "sheetHelp")
            }
         }
    }
}
```

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a help link

- [init(action:)](/documentation/swiftui/helplink/init(action:)) Constructs a new help link with the specified action.
- [init(destination:)](/documentation/swiftui/helplink/init(destination:)) Constructs a new help link that opens the specified destination URL.
- [init(anchor:)](/documentation/swiftui/helplink/init(anchor:)) Constructs a new help link with the specified anchor in the main app bundle’s book.
- [init(anchor:book:)](/documentation/swiftui/helplink/init(anchor:book:)) Constructs a new help link with the specified anchor and book.

## Linking to other content

- [Link](/documentation/swiftui/link)
- [ShareLink](/documentation/swiftui/sharelink)
- [SharePreview](/documentation/swiftui/sharepreview)
- [TextFieldLink](/documentation/swiftui/textfieldlink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
