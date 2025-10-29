---
title: credentialExportManager
description: This environment variable is for SwiftUI clients of the credential exchange API. An example usage might look like:
source: https://developer.apple.com/documentation/swiftui/environmentvalues/credentialexportmanager
timestamp: 2025-10-29T00:14:21.742Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# credentialExportManager

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, visionOS 26.0+

> This environment variable is for SwiftUI clients of the credential exchange API. An example usage might look like:

```swift
var credentialExportManager: ASCredentialExportManager { get }
```

## Discussion

```swift
struct CredentialExchangeManagerExample: View {
    @Environment(\.credentialExchangeManager) private var credentialExchangeManager

    var body: some View {
        Button("Export Credentials") {
            Task {
                do {
                    let credentialData = getCredentialData() // defined elsewhere
                    try await credentialExchangeManager.exportCredentials(credentialData)
                } catch {
                    // code to handle the export error
                }
            }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
