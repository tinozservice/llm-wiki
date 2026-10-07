---
title: Puter.js Documentation
source: https://docs.puter.com/Apps/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Create, manage, and interact with applications in Puter desktop OS.
tags:
  - clippings
---
## Apps

---

The Apps API allows you to create, manage, and interact with applications in the Puter ecosystem. You can build and deploy applications that integrate seamlessly with Puter's platform.

## Features

Create App

List App

Delete App

Update App

Get Information

#### Create an app pointing to example.com

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Generate a random app name
            let appName = puter.randName();

            // (2) Create the app and prints its UID to the page
            let app = await puter.apps.create(appName, "https://example.com");
            puter.print(\`Created app "${app.name}". UID: ${app.uid}\`);

            // (3) Delete the app (cleanup)
            await puter.apps.delete(appName);
        })();
    </script>
</body>
</html>
```

#### Create 3 random apps and then list them

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Generate 3 random app names
            let appName_1 = puter.randName();
            let appName_2 = puter.randName();
            let appName_3 = puter.randName();

            // (2) Create 3 apps
            await puter.apps.create(appName_1, 'https://example.com');
            await puter.apps.create(appName_2, 'https://example.com');
            await puter.apps.create(appName_3, 'https://example.com');

            // (3) Get all apps (list)
            let apps = await puter.apps.list();

            // (4) Display the names of the apps
            puter.print(JSON.stringify(apps.map(app => app.name)));

            // (5) Delete the 3 apps we created earlier (cleanup)
            await puter.apps.delete(appName_1);
            await puter.apps.delete(appName_2);
            await puter.apps.delete(appName_3);
        })();
    </script>
</body>
</html>
```

#### Create a random app then delete it

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Generate a random app name to make sure it doesn't already exist
            let appName = puter.randName();

            // (2) Create the app
            await puter.apps.create(appName, "https://example.com");
            puter.print(\`"${appName}" created<br>\`);

            // (3) Delete the app
            await puter.apps.delete(appName);
            puter.print(\`"${appName}" deleted<br>\`);

            // (4) Try to retrieve the app (should fail)
            puter.print(\`Trying to retrieve "${appName}"...<br>\`);
            try {
                await puter.apps.get(appName);
            } catch (e) {
                puter.print(\`"${appName}" could not be retrieved<br>\`);
            }
        })();
    </script>
</body>
</html>
```

#### Create a random app then change its title

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a random app
            let appName = puter.randName();
            await puter.apps.create(appName, "https://example.com")
            puter.print(\`"${appName}" created<br>\`);

            // (2) Update the app
            let updated_app = await puter.apps.update(appName, {title: "My Updated Test App!"})
            puter.print(\`Changed title to "${updated_app.title}"<br>\`);

            // (3) Delete the app (cleanup)
            await puter.apps.delete(appName)
        })();
    </script>
</body>
</html>
```

#### Create a random app then get it

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Generate a random app name to make sure it doesn't already exist
            let appName = puter.randName();

            // (2) Create the app
            await puter.apps.create(appName, "https://example.com");
            puter.print(\`"${appName}" created<br>\`);

            // (3) Retrieve the app using get()
            let app = await puter.apps.get(appName);
            puter.print(\`"${appName}" retrieved using get(): id: ${app.uid}<br>\`);

            // (4) Delete the app (cleanup)
            await puter.apps.delete(appName);
        })();
    </script>
</body>
</html>
```

## Functions

These Apps API are supported out of the box when using Puter.js:

- **[`puter.apps.create()`](https://docs.puter.com/Apps/create/)** - Create a new application
- **[`puter.apps.list()`](https://docs.puter.com/Apps/list/)** - List all applications
- **[`puter.apps.delete()`](https://docs.puter.com/Apps/delete/)** - Delete an application
- **[`puter.apps.update()`](https://docs.puter.com/Apps/update/)** - Update application settings
- **[`puter.apps.get()`](https://docs.puter.com/Apps/get/)** - Get information about a specific application
- **[`puter.apps.checkName()`](https://docs.puter.com/Apps/checkName/)** - Check whether an app name is available

## Examples

You can see various Puter.js Apps API in action from the following examples:

- Create
	- [Create an app pointing to https://example.com](https://docs.puter.com/playground/app-create/)
- List
	- [Create 3 random apps and then list them](https://docs.puter.com/playground/app-list/)
- Delete
	- [Create a random app then delete it](https://docs.puter.com/playground/app-delete/)
- Update
	- [Create a random app then change its title](https://docs.puter.com/playground/app-update/)
- Get
	- [Create a random app then get it](https://docs.puter.com/playground/app-get/)
- Sample Apps