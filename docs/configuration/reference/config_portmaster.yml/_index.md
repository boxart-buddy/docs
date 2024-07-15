---
linkTitle: config_portmaster.yml
title: config_portmaster.yml
weight: 3
---

### Portmaster Configuration

<br>

Boxart Buddy will generate artwork for any '.sh' files it encounters with the 'Ports' folder under your root rom location:

{{< filetree/container >}}
{{< filetree/folder name="roms" >}}
{{< filetree/folder name="Ports" >}}
{{< filetree/file name="StardewValley.sh" >}}
{{< filetree/file name="TMNTShreddersRevenge.sh" >}}
{{< filetree/file name="Undertale.sh" >}}
{{< filetree/file name="Grand Theft Auto Vice City.sh" >}}
{{< /filetree/folder >}}
{{< /filetree/folder >}}
{{< /filetree/container >}}

If this folder is not present then you also have the option to 'Force Generate' portmaster artwork when picking options during the build stage.
You can set an array of port titles in the config_portmaster.yml file which will restrict art generation to only those titles. e.g.

```yaml {filename="config_portmaster.yml"}
[ Balatro, StardewValley, 'Duke Nukem 3D', 'Grand Theft Auto 3', 'Sonic Mania', 'Cave Story' ]
```

Or like this

```yaml {filename="config_portmaster.yml"}
  - Balatro
  - StardewValley
  - Duke Nukem 3D
```

Alternatively you can set portmaster_generate_all (in [config.yml]({{< ref "configuration/reference/config.yml" >}})) to ```true``` to generate portmaster images for all known portmaster titles.

Running the following command will print a list of all portmaster names to use in this configuration

```shell
make portmaster-names
```

