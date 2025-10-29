---
title: fileDialogCustomizationID(_:)
description: On macOS, configures the , , or  to persist and restore the file dialog configuration.
source: https://developer.apple.com/documentation/swiftui/view/filedialogcustomizationid(_:)
timestamp: 2025-10-29T00:10:23.414Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileDialogCustomizationID(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> On macOS, configures the , , or  to persist and restore the file dialog configuration.

```swift
nonisolated func fileDialogCustomizationID(_ id: String) -> some View
```

## Parameters

**id**

An identifier of the configuration.



## Discussion

Among other parameters, it stores the current directory, view style (e.g., Icons, List, Columns), recent places, and expanded window size. It enables a refined user experience; for example, when importing an image, the user might switch to the Icons view, but the List view could be more convenient in another context. The file dialog stores these settings and applies them every time before presenting the panel. If not provided, on every launch, the file dialog uses the default configuration.

## Configuring a file dialog

- [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:))
- [fileDialogConfirmationLabel(_:)](/documentation/swiftui/view/filedialogconfirmationlabel(_:))
- [fileDialogDefaultDirectory(_:)](/documentation/swiftui/view/filedialogdefaultdirectory(_:))
- [fileDialogImportsUnresolvedAliases(_:)](/documentation/swiftui/view/filedialogimportsunresolvedaliases(_:))
- [fileDialogMessage(_:)](/documentation/swiftui/view/filedialogmessage(_:))
- [fileDialogURLEnabled(_:)](/documentation/swiftui/view/filedialogurlenabled(_:))
- [FileDialogBrowserOptions](/documentation/swiftui/filedialogbrowseroptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
