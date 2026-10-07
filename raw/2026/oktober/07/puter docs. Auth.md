---
title: Puter.js Documentation
source: https://docs.puter.com/Auth/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Authenticate users with their Puter accounts using Puter.js Auth API
tags:
  - clippings
---
## Auth

---

The Authentication API enables users to authenticate with your application using their Puter account.

This is essential for users to access the various Puter.js APIs integrated into your application. The auth API supports several features, including sign-in, sign-out, checking authentication status, and retrieving user information.

## Features

#### Initiates the sign in process for the user

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <button id="sign-in">Sign in</button>
    <script>
        // Because signIn() opens a popup window, it must be called from a user action.
        document.getElementById('sign-in').addEventListener('click', async () => {
            // signIn() will resolve when the user has signed in.
            await puter.auth.signIn().then((res) => {
                puter.print('Signed in<br>' + JSON.stringify(res));
            });
        });
    </script>
</body>
</html>
```

#### Checks whether the user is signed into the application

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.print(\`Sign in status: ${puter.auth.isSignedIn()}\`);
    </script>
</body>
</html>
```

#### Returns the user's basic information

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.auth.getUser().then(function(user) {
            puter.print(JSON.stringify(user));
        });
    </script>
</body>
</html>
```

#### Signs the user out of the application

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.auth.signOut();
    </script>
</body>
</html>
```

## Functions

These authentication features are supported out of the box when using Puter.js:

- **[`puter.auth.signIn()`](https://docs.puter.com/Auth/signIn/)** - Sign in a user
- **[`puter.auth.signOut()`](https://docs.puter.com/Auth/signOut/)** - Sign out the current user
- **[`puter.auth.isSignedIn()`](https://docs.puter.com/Auth/isSignedIn/)** - Check if a user is signed in
- **[`puter.auth.getUser()`](https://docs.puter.com/Auth/getUser/)** - Get information about the current user
- **[`puter.auth.getProfile()`](https://docs.puter.com/Auth/getProfile/)** - Get a user's profile, when available
- **[`puter.auth.getProfilePicture()`](https://docs.puter.com/Auth/getProfilePicture/)** - Get a user's profile picture, when available
- **[`puter.auth.getMonthlyUsage()`](https://docs.puter.com/Auth/getMonthlyUsage/)** - Get the user's current monthly resource usage
- **[`puter.auth.getDetailedAppUsage()`](https://docs.puter.com/Auth/getDetailedAppUsage/)** - Get detailed usage statistics for an application

## Examples

You can see various Puter.js authentication features in action from the following examples:

- [Sign in](https://docs.puter.com/playground/auth-sign-in/)
- [Sign Out](https://docs.puter.com/playground/auth-sign-out/)
- [Check Sign In](https://docs.puter.com/playground/auth-is-signed-in/)
- [Get User Information](https://docs.puter.com/playground/auth-get-user/)