---
title: Puter.js Documentation
source: https://docs.puter.com/FS/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Store and manage data in the user's own cloud drive with Puter.js file system API.
tags:
  - clippings
---
## Cloud Storage

---

The Cloud Storage API lets you store and manage data in the cloud.

Local [uploads](https://docs.puter.com/FS/upload/) can optionally generate browser image thumbnails or use a custom thumbnail callback. The callback can delegate to the built-in image generator and respond to upload cancellation. The Puter desktop additionally provides PDF previews without adding a PDF renderer to the SDK.

It comes with a comprehensive but familiar file system operations including write, read, delete, move, and copy for files, plus powerful directory management features like creating directories, listing contents, and much more.

With Puter.js, you don't need to worry about setting up storage infrastructure such as configuring buckets, managing CDNs, or ensuring availability, since everything is handled for you. Additionally, with the [User-Pays Model](https://docs.puter.com/user-pays-model/), you don't have to worry about storage or bandwidth costs, as users of your application cover their own usage.

**Need to share data across users?** Each user's files live in their own account, so one user can't read another's by default. To hand specific items to specific people, use [`puter.fs.share()`](https://docs.puter.com/FS/share/). To keep centralized files that every user reads from and writes to, use a [Serverless Worker](https://docs.puter.com/Workers/) — its code can act on the worker owner's resources, giving all users one shared backend.

## Features

Write File

Read File

Create Directory

List Directory

Rename

Copy

Move

Get Info

Delete

Upload

#### Create a new file containing "Hello, world!"

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        // Create a new file called "hello.txt" containing "Hello, world!"
        puter.fs.write('hello.txt', 'Hello, world!').then(() => {
            puter.print('File written successfully');
        })
    </script>
</body>
</html>
```

#### Reads data from a file

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a random text file
            let filename = puter.randName() + ".txt";
            await puter.fs.write(filename, "Hello world! I'm a file!");
            puter.print(\`"${filename}" created<br>\`);

            // (2) Read the file and print its contents
            let blob = await puter.fs.read(filename);
            let content = await blob.text();
            puter.print(\`"${filename}" read (content: "${content}")<br>\`);
        })();
    </script>
</body>
</html>
```

#### Create a new directory

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        // Create a directory with random name
        let dirName = puter.randName();
        puter.fs.mkdir(dirName).then((directory) => {
            puter.print(\`"${dirName}" created at ${directory.path}\`);
        }).catch((error) => {
            puter.print('Error creating directory:', error);
        });
    </script>
</body>
</html>
```

#### Read a directory

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.fs.readdir('./').then((items) => {
            // print the path of each item in the directory
            puter.print(\`Items in the directory:<br>${items.map((item) => item.path)}<br>\`);
        }).catch((error) => {
            puter.print(\`Error reading directory: ${error}\`);
        });
    </script>
</body>
</html>
```

#### Rename a file

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // Create hello.txt
            await puter.fs.write('hello.txt', 'Hello, world!');
            puter.print(\`"hello.txt" created<br>\`);

            // Rename hello.txt to hello-world.txt
            await puter.fs.rename('hello.txt', 'hello-world.txt')
            puter.print(\`"hello.txt" renamed to "hello-world.txt"<br>\`);
        })();
    </script>
</body>
</html>
```

#### Copy a file

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
    (async () => {
        // (1) Create a random text file
        let filename = puter.randName() + '.txt';
        await puter.fs.write(filename, 'Hello, world!');
        puter.print(\`Created file: "${filename}"<br>\`);

        // (2) create a random directory
        let dirname = puter.randName();
        await puter.fs.mkdir(dirname);
        puter.print(\`Created directory: "${dirname}"<br>\`);

        // (3) Copy the file into the directory
        puter.fs.copy(filename, dirname).then((file)=>{
            puter.print(\`Copied file: "${filename}" to directory "${dirname}"<br>\`);
        }).catch((error)=>{
            puter.print(\`Error copying file: "${error}"<br>\`);
        });
    })()
    </script>
</body>
</html>
```

#### Move a file

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
    (async () => {
        // (1) Create a random text file
        let filename = puter.randName() + '.txt';
        await puter.fs.write(filename, 'Hello, world!');
        puter.print(\`Created file: ${filename}<br>\`);

        // (2) create a random directory
        let dirname = puter.randName();
        await puter.fs.mkdir(dirname);
        puter.print(\`Created directory: ${dirname}<br>\`);

        // (3) Move the file into the directory
        await puter.fs.move(filename, dirname);
        puter.print(\`Moved file: ${filename} to directory ${dirname}<br>\`);

        // (4) Delete the file and directory (cleanup)
        await puter.fs.delete(dirname + '/' + filename);
        await puter.fs.delete(dirname);
    })();
    </script>
</body>
</html>
```

#### Get information about a file

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // () create a file
            await puter.fs.write('hello.txt', 'Hello, world!');
            puter.print('hello.txt created<br>');

            // (2) get information about hello.txt
            const file = await puter.fs.stat('hello.txt');
            puter.print(\`hello.txt name: ${file.name}<br>\`);
            puter.print(\`hello.txt path: ${file.path}<br>\`);
            puter.print(\`hello.txt size: ${file.size}<br>\`);
            puter.print(\`hello.txt created: ${file.created}<br>\`);
        })()
    </script>
</body>
</html>
```

#### Delete a file

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a random file
            let filename = puter.randName();
            await puter.fs.write(filename, 'Hello, world!');
            puter.print('File created successfully<br>');

            // (2) Delete the file
            await puter.fs.delete(filename);
            puter.print('File deleted successfully');
        })();
    </script>
</body>
</html>
```

#### Upload a file from a file input

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <input type="file" id="file-input" />
    <script>
        // File input
        let fileInput = document.getElementById('file-input');

        // Upload the file when the user selects it
        fileInput.onchange = () => {
            puter.fs.upload(fileInput.files).then((file) => {
                puter.print(\`File uploaded successfully to: ${file.path}\`);
            })
        };
    </script>
</body>
</html>
```

## Functions

These cloud storage features are supported out of the box when using Puter.js:

- **[`puter.fs.write()`](https://docs.puter.com/FS/write/)** - Write data to a file
- **[`puter.fs.read()`](https://docs.puter.com/FS/read/)** - Read data from a file
- **[`puter.fs.mkdir()`](https://docs.puter.com/FS/mkdir/)** - Create a directory
- **[`puter.fs.readdir()`](https://docs.puter.com/FS/readdir/)** - List contents of a directory
- **[`puter.fs.rename()`](https://docs.puter.com/FS/rename/)** - Rename a file or directory
- **[`puter.fs.copy()`](https://docs.puter.com/FS/copy/)** - Copy a file or directory
- **[`puter.fs.move()`](https://docs.puter.com/FS/move/)** - Move a file or directory
- **[`puter.fs.stat()`](https://docs.puter.com/FS/stat/)** - Get information about a file or directory
- **[`puter.fs.delete()`](https://docs.puter.com/FS/delete/)** - Delete a file or directory
- **[`puter.fs.upload()`](https://docs.puter.com/FS/upload/)** - Upload a file from the local system
- **[`puter.fs.getReadURL()`](https://docs.puter.com/FS/getReadURL/)** - Generate a URL that can be used to read a file
- **[`puter.fs.revokeReadURL()`](https://docs.puter.com/FS/revokeReadURL/)** - Revoke a URL created by `getReadURL()`
- **[`puter.fs.share()`](https://docs.puter.com/FS/share/)** - Give another user access to a file or directory
- **[`puter.fs.unshare()`](https://docs.puter.com/FS/unshare/)** - Withdraw a user's access
- **[`puter.fs.listShared()`](https://docs.puter.com/FS/listShared/)** - List what others have shared with you
- **[`puter.fs.listSharedByMe()`](https://docs.puter.com/FS/listSharedByMe/)** - List everything you have shared out
- **[`puter.fs.getShares()`](https://docs.puter.com/FS/getShares/)** - List who has access to an item
- **[`puter.fs.getShareLink()`](https://docs.puter.com/FS/getShareLink/)** - Build a link that opens a file in an app

## Examples

You can see various Puter.js Cloud Storage features in action from the following examples:

- Write
	- [Write File](https://docs.puter.com/playground/fs-write/)
		- [Write a file with deduplication](https://docs.puter.com/playground/fs-write-dedupe/)
		- [Create a new file with input coming from a file input](https://docs.puter.com/playground/fs-write-from-input/)
		- [Create a file in a directory that does not exist](https://docs.puter.com/playground/fs-write-create-missing-parents/)
- [Read File](https://docs.puter.com/playground/fs-read/)
- Create Directory
- [Read Directory](https://docs.puter.com/playground/fs-readdir/)
- [Rename](https://docs.puter.com/playground/fs-rename/)
- [Copy File/Directory](https://docs.puter.com/playground/fs-copy/)
- Move
- [Get File/Directory Info](https://docs.puter.com/playground/fs-stat/)
- Delete
- [Upload](https://docs.puter.com/playground/fs-upload/)

## Tutorials

- [Add Upload to Your Website for Free](https://developer.puter.com/tutorials/add-upload-to-your-website-for-free/)