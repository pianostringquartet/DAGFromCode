---
title: fileDialogDefaultDirectory(_:)
description: Configures the , , or  to open with the specified default directory.
source: https://developer.apple.com/documentation/swiftui/view/filedialogdefaultdirectory(_:)
timestamp: 2025-10-29T00:09:52.448Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileDialogDefaultDirectory(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Configures the , , or  to open with the specified default directory.

```swift
nonisolated func fileDialogDefaultDirectory(_ defaultDirectory: URL?) -> some View
```

## Parameters

**defaultDirectory**

The directory to show when the system file dialog launches. If the given file dialog has a `fileDialogCustomizationID` if stores the user-chosen directory and subsequently opens with it, ignoring the default value provided in this modifier.



## Configuring a file dialog

- [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:))
- [fileDialogConfirmationLabel(_:)](/documentation/swiftui/view/filedialogconfirmationlabel(_:))
- [fileDialogCustomizationID(_:)](/documentation/swiftui/view/filedialogcustomizationid(_:))
- [fileDialogImportsUnresolvedAliases(_:)](/documentation/swiftui/view/filedialogimportsunresolvedaliases(_:))
- [fileDialogMessage(_:)](/documentation/swiftui/view/filedialogmessage(_:))
- [fileDialogURLEnabled(_:)](/documentation/swiftui/view/filedialogurlenabled(_:))
- [FileDialogBrowserOptions](/documentation/swiftui/filedialogbrowseroptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
