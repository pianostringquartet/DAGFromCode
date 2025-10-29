---
title: certificateSheet(trust:title:message:help:)
description: Displays a certificate sheet using the provided certificate trust.
source: https://developer.apple.com/documentation/swiftui/view/certificatesheet(trust:title:message:help:)
timestamp: 2025-10-29T00:09:30.171Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# certificateSheet(trust:title:message:help:)

**Available on:** iOS 18.4+, iPadOS 18.4+, macOS 15.4+, tvOS 18.4+, visionOS 2.4+, watchOS 11.4+

> Displays a certificate sheet using the provided certificate trust.

```swift
@MainActor @preconcurrency func certificateSheet(trust: Binding<SecTrust?>, title: String? = nil, message: String? = nil, help: URL? = nil) -> some View
```

## Parameters

**trust**

A binding to a SecTrust reference created with SecTrustCreateWithCertificates (see <Security/SecTrust.h>) that determines whether to present the certificate sheet.



**title**

The title to display. Uses a default title if nil.



**message**

The message to display. Uses a default message if nil.



**help**

URL for the “Learn More” button. Uses a default URL if nil.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
