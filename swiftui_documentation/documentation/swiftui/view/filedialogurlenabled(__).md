---
title: fileDialogURLEnabled(_:)
description: On macOS, configures the  or  to conditionally disable presented URLs.
source: https://developer.apple.com/documentation/swiftui/view/filedialogurlenabled(_:)
timestamp: 2025-10-29T00:14:34.049Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fileDialogURLEnabled(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> On macOS, configures the  or  to conditionally disable presented URLs.

```swift
nonisolated func fileDialogURLEnabled(_ predicate: Predicate<URL>) -> some View
```

## Parameters

**predicate**

The predicate that evaluates the URLs presented to the user to conditionally disable them. The implementation is expected to have constant complexity and should not access the files contents or metadata. A common use case is inspecting the path or the file name.



## Configuring a file dialog

- [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:))
- [fileDialogConfirmationLabel(_:)](/documentation/swiftui/view/filedialogconfirmationlabel(_:))
- [fileDialogCustomizationID(_:)](/documentation/swiftui/view/filedialogcustomizationid(_:))
- [fileDialogDefaultDirectory(_:)](/documentation/swiftui/view/filedialogdefaultdirectory(_:))
- [fileDialogImportsUnresolvedAliases(_:)](/documentation/swiftui/view/filedialogimportsunresolvedaliases(_:))
- [fileDialogMessage(_:)](/documentation/swiftui/view/filedialogmessage(_:))
- [FileDialogBrowserOptions](/documentation/swiftui/filedialogbrowseroptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
