---
title: fileDialogImportsUnresolvedAliases(_:)
description: On macOS, configures the , , or  behavior when a user chooses an alias.
source: https://developer.apple.com/documentation/swiftui/view/filedialogimportsunresolvedaliases(_:)
timestamp: 2025-10-29T00:09:48.877Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileDialogImportsUnresolvedAliases(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> On macOS, configures the , , or  behavior when a user chooses an alias.

```swift
nonisolated func fileDialogImportsUnresolvedAliases(_ imports: Bool) -> some View
```

## Parameters

**imports**

A Boolean value that indicates if the application receives unresolved or resolved URLs when a user chooses aliases.



## Discussion

By default, file dialogs resolve aliases and provide the URL of the item referred to by the chosen alias. This modifier allows control of this behavior: pass `true` if the application doesn’t want file dialog to resolve aliases.

## Configuring a file dialog

- [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:))
- [fileDialogConfirmationLabel(_:)](/documentation/swiftui/view/filedialogconfirmationlabel(_:))
- [fileDialogCustomizationID(_:)](/documentation/swiftui/view/filedialogcustomizationid(_:))
- [fileDialogDefaultDirectory(_:)](/documentation/swiftui/view/filedialogdefaultdirectory(_:))
- [fileDialogMessage(_:)](/documentation/swiftui/view/filedialogmessage(_:))
- [fileDialogURLEnabled(_:)](/documentation/swiftui/view/filedialogurlenabled(_:))
- [FileDialogBrowserOptions](/documentation/swiftui/filedialogbrowseroptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
