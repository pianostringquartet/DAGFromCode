---
title: authorizationController
description: A value provided in the SwiftUI environment that views can use to perform authorization requests.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/authorizationcontroller
timestamp: 2025-10-29T00:09:16.707Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# authorizationController

**Available on:** iOS 16.4+, iPadOS 16.4+, macOS 13.3+, tvOS 16.4+, watchOS 9.4+

> A value provided in the SwiftUI environment that views can use to perform authorization requests.

```swift
var authorizationController: AuthorizationController { get }
```

## Discussion

For example, you can perform authorization requests when the user taps a button:

```swift
struct AuthorizationControllerExample: View {
    @Environment(\.authorizationController) private var authorizationController

    var body: some View {
        Button("Sign In") {
            Task {
                do {
                    async let requests = authorizationRequests() // defined elsewhere
                    let result = try await authorizationController
                        .performRequests(requests)

                    switch result {
                    // code to handle the authorization result
                    }
                } catch {
                    // code to handle the authorization error
                }
            }
        }
    }
}
```

## Authorizing and authenticating

- [LocalAuthenticationView](/documentation/LocalAuthentication/LocalAuthenticationView)
- [SignInWithAppleButton](/documentation/AuthenticationServices/SignInWithAppleButton)
- [signInWithAppleButtonStyle(_:)](/documentation/swiftui/view/signinwithapplebuttonstyle(_:))
- [webAuthenticationSession](/documentation/swiftui/environmentvalues/webauthenticationsession)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
