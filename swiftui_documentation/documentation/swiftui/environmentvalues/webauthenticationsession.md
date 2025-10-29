---
title: webAuthenticationSession
description: A value provided in the SwiftUI environment that views can use to authenticate a user through a web service.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/webauthenticationsession
timestamp: 2025-10-29T00:10:04.325Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# webAuthenticationSession

**Available on:** iOS 16.4+, iPadOS 16.4+, macOS 13.3+, tvOS 16.4+, watchOS 9.4+

> A value provided in the SwiftUI environment that views can use to authenticate a user through a web service.

```swift
var webAuthenticationSession: WebAuthenticationSession { get }
```

## Discussion

For example, you can start a web authentication session when the user taps a button:

```swift
struct WebAuthenticationSessionExample: View {
    @Environment(\.webAuthenticationSession) private var webAuthenticationSession

    var body: some View {
        Button("Sign In") {
            Task {
                do {
                    let urlWithToken = try await webAuthenticationSession.authenticate(
                        using: URL(string: "https://www.example.com")!,
                        callbackURLScheme: "x-example-app")
                    try await signIn(using: urlWithToken) // defined elsewhere
                } catch {
                    // code to handle authentication errors
                }
            }
        }
    }
}
```

Use `WebAuthenticationSession/BrowserSession/ephemeral` to request that the browser doesn’t share cookies or other browsing data between the authentication session and the user’s normal browser session. Whether the request is honored depends on the user’s default web browser. Safari always honors the request.

```swift
let urlWithToken = try await webAuthenticationSession.authenticate(
    using: URL(string: "https://www.example.com")!,
    callbackURLScheme: "x-example-app",
    preferredBrowserSession: .ephemeral)
```

After the user authenticates, the authentication provider redirects the browser to a URL that uses the callback scheme. The browser detects the redirect, dismisses itself, and the complete URL will be returned. Inspect the URL to determine the outcome of the authentication:

```swift
let queryItems = URLComponents(string: urlWithToken.absoluteString)?.queryItems
let token = queryItems?.first(where: { $0.name == "token" })?.value
```

The above example looks for a token stored as a query parameter. The specific parsing that you have to do depends on how the authentication provider structures the callback URL.

## Authorizing and authenticating

- [LocalAuthenticationView](/documentation/LocalAuthentication/LocalAuthenticationView)
- [SignInWithAppleButton](/documentation/AuthenticationServices/SignInWithAppleButton)
- [signInWithAppleButtonStyle(_:)](/documentation/swiftui/view/signinwithapplebuttonstyle(_:))
- [authorizationController](/documentation/swiftui/environmentvalues/authorizationcontroller)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
