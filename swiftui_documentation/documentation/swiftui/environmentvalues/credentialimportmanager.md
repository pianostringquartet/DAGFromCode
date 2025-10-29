---
title: credentialImportManager
description: This environment variable is for SwiftUI clients of the credential exchange API. An example usage might look like:
source: https://developer.apple.com/documentation/swiftui/environmentvalues/credentialimportmanager
timestamp: 2025-10-29T00:09:16.508Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# credentialImportManager

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, visionOS 26.0+

> This environment variable is for SwiftUI clients of the credential exchange API. An example usage might look like:

```swift
var credentialImportManager: ASCredentialImportManager { get }
```

## Discussion

```swift
struct CredentialImportManagerExample: View {
    @Environment(\.credentialImportManager) private var credentialImportManager

    var body: some View {
        content // defined elsewhere
            .onContinueUserActivity(ASCredentialExchangeActivityType) { activity in
                Task {
                    do {
                        guard let token = activity.userInfo?[ASCredentialImportToken] as? UUID else { return }
                        let credentialData = try await credentialImportManager.importCredentials(token: token)
                        // do something with the data
                    } catch {
                        // code to handle the import error
                    }
                }
            }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
