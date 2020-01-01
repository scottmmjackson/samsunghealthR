# Samsung Health Interface for R

> Note: This package is pre-alpha, is missing a great deal of
> functionality, and is nowhere near ready for CRAN. Use at
> your own risk and please report issues as you notice them.

> Disclaimer: Samsung® and Samsung® Health™ are trademarks of
> Samsung® in the US and other countries. The use of the marks
> in this package consitutes nominative fair use in referring
> to the data exported from the Samsung® Health™ mobile application.
> No right is claimed to use the mark outside of the nominative
> fair use context. The author, maintainers, and contributors
> are not affiliated with Samsung® in the course of their work
> on this package and absent a separate relationship do not
> represent Samsung, its affiliates or assigns.
> For more information, see: <https://www.samsung.com/us/common/legal.html> 
> Contributors are requested to respect Samsung's intellectual
> property rights.

This package reads data exports from the Samsung Health application.

## Exporting your Samsung Health Data

To export your data, open Samsung Health, press the menu (hamburger)
icon in the top left-hand corner of the screen, then select the
settings (gear) icon at the top right of that menu.

In the settings menu, scroll down to the Data section and select
Download Personal Data. You may have to reenter your Samsung account
credentials.

The data will generally export to the following directory:

```
/sdcard0/Android/data/com.sec.android.app.shealth/files/Download/
```

You can download this via USB debugging or use your phone's file
manager to move the directory somewhere that R can access.

## Basic Usage

Using the directory or a compressed `tar.gz` or `tar.bz2` of the
directory, you can pass the path directly to `samsunghealth::load_samsunghealth()`.
If the directory is compressed, it will be expanded into a temp directory.

The data will be read into a list with the CSV files imported as data
frames. There are also functions for reading individual CSV files.

## Technical Info

Units in Samsung's data are generally metric, even if the user input
them in imperial.

There are sometimes JSON blobs referenced in the data frames. Usually,
those blobs can be found using the following pattern:

```
<export_directory>/jsons/com.samsung.<component_slug>/<uuid>.json
```

Where export directory is the location of the Samsung Health data export,
component slug is the component slug such as `com.samsung.shealth.tracker.oxygen_saturation`,
and uuid is a unique identifier made of hex digits interspersed with
hyphens, which should be referenced in the data frame.

As far as I know, Samsung has no documentation regarding the accuracy,
integrity, format, etc. of the data. Each export comes with a README.txt
file which basically leads to their privacy policy.
