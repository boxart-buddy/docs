---
linkTitle: Quickstart
title: Quickstart
weight: 2
breadcrumbs: false
---

{{< callout type="info" >}}
All commands should be run from the root of the boxart-buddy repository
{{< /callout >}}

{{% steps %}}

### Bootstrap

```shell
make bootstrap
```

You'll be prompted to enter the root path to 'folder_roms', which must be a folder that exists and contains subfolders with your roms in them. Boxart Buddy assumes that each folder contains roms for one platform only.

This will generate config files inside ./user_config folder.

{{< filetree/container >}}
{{< filetree/folder name="user_config" >}}
{{< filetree/file name="config.yml" >}}
{{< filetree/file name="config_folder.yml" >}}
{{< filetree/file name="config_portmaster.yml" >}}
{{< filetree/file name="folder_roms.yml" >}}
{{< filetree/file name="name_extra.json" >}}
{{< /filetree/folder >}}
{{< /filetree/container >}}

You must edit [config.yml]( {{< ref "configuration/reference/config.yml" >}}) and [config_folder.yml]( {{< ref "configuration/reference/config_folder.yml" >}}) before you can proceed.

{{< callout >}}
Bootstrap attempts to auto generate config_folder.yml for you but there may be folders you need to map manually.
{{< /callout >}}

See [Configuration Reference]( {{< ref "configuration" >}}) for more details

### Scrape

```shell
make scrape
```

This process is **slow** and can take hours depending on number of roms<br>
This only needs to be done once.

### Generate

```shell
make build
```

{{< callout >}}
See [templates gallery]({{< ref "/templates/gallery" >}}) for previews <br/>
See [build options]({{< ref "build_options" >}}) for options
{{< /callout >}}

![Standfirst](images/gif/build.gif)

Completed artwork will be output into ```./package```. <br>
See [templates transfer]({{< ref "/templates/transfer" >}})
for information on copying to device

{{< callout type="warning" >}}
After generating, some roms may be skipped due to not being scraped properly.
See the [skipped section]({{< ref "skipped" >}}) for how to handle this
{{< /callout >}}

{{% /steps %}}
