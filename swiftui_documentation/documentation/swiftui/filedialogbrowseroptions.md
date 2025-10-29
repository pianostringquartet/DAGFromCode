---
title: FileDialogBrowserOptions
description: The way that file dialogs present the file system.
source: https://developer.apple.com/documentation/swiftui/filedialogbrowseroptions
timestamp: 2025-10-29T00:10:57.075Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FileDialogBrowserOptions

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The way that file dialogs present the file system.

```swift
struct FileDialogBrowserOptions
```

## Overview

Apply the options using the [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:)) modifier.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting browser options

- [displayFileExtensions](/documentation/swiftui/filedialogbrowseroptions/displayfileextensions) On iOS, configures the , , or  to show or hide file extensions. Default behavior is to hide them. On macOS, this option has no effect.
- [enumeratePackages](/documentation/swiftui/filedialogbrowseroptions/enumeratepackages) Allows enumerating packages contents in contrast to the default behavior when packages are represented flatly, similar to files.
- [includeHiddenFiles](/documentation/swiftui/filedialogbrowseroptions/includehiddenfiles) Displays the files that are hidden by default.

## Configuring a file dialog

- [fileDialogBrowserOptions(_:)](/documentation/swiftui/view/filedialogbrowseroptions(_:))
- [fileDialogConfirmationLabel(_:)](/documentation/swiftui/view/filedialogconfirmationlabel(_:))
- [fileDialogCustomizationID(_:)](/documentation/swiftui/view/filedialogcustomizationid(_:))
- [fileDialogDefaultDirectory(_:)](/documentation/swiftui/view/filedialogdefaultdirectory(_:))
- [fileDialogImportsUnresolvedAliases(_:)](/documentation/swiftui/view/filedialogimportsunresolvedaliases(_:))
- [fileDialogMessage(_:)](/documentation/swiftui/view/filedialogmessage(_:))
- [fileDialogURLEnabled(_:)](/documentation/swiftui/view/filedialogurlenabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
