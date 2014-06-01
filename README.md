# Description

Place for well baked vbkick OS templates.

Templates are reviewed and polished in [vbkick-template-forge](https://github.com/wilas/vbkick-templates-forge) before appear in this repository. 
You may want explore [forge](https://github.com/wilas/vbkick-templates-forge) to find more unavailable here templates.

When an OS will reach the "End of Life" (EOL) connected template will be moved to the [archive](https://github.com/wilas/vbkick-templates-archive).

Note: Most templates define Vagrant Base Boxes, so in each template vagrant user is created.

# Templates structure (good practice)

```
    .
    ├── RedHat6
    │   ├── common.cfg
    │   ├── definition.cfg
    │   ├── definition-6.3-x86_64-noX.cfg
    │   ├── definition-6.4-x86_64-noX.cfg
    │   ├── definition-6.5-x86_64-noX.cfg
    │   ├── kickstart
    │   │   └── <redhat-6.4-x86_64-noX.cfg, redhat-6.5-x86_64-desktop.cfg, ...>
    │   ├── validate
    │   │   └── <adm_features.sh, adm_context.txt, adm_envrc, test_puppet.sh, test_ruby.sh, test_virtualbox.sh, test_vagrant, ....sh >
    │   └── postinstall
    │       └── <adm_postinstall.sh, adm_context.txt, adm_envrc, base.sh, cleanup.sh, puppet.sh, ruby.sh, virtualbox.sh, ....sh >
    ├── RedHat5
    │   ├── common.cfg
    │   ├── definition.cfg
    │   ├── definition-5.8-x86_64-noX.cfg
    │   ├── definition-5.9-x86_64-noX.cfg
    │   ├── definition-5.10-x86_64-noX.cfg
    │   ├── kickstart
    │   │   └── <redhat-5.9-x86_64-noX.cfg, redhat-5.10-i386-noX.cfg, ...>
    │   ├── validate
    │   │   └── <adm_features.sh, adm_context.txt, adm_envrc, test_puppet.sh, test_ruby.sh, test_virtualbox.sh, test_vagrant, ....sh >
    │   └── postinstall
    │       └── <adm_postinstall.sh, adm_context.txt, adm_envrc, base.sh, cleanup.sh, puppet.sh, ruby.sh, virtualbox.sh, ....sh >
    └── Debian7
        ├── common.cfg
        ├── definition.cfg
        ├── definition-7.5-i386-desktop.cfg
        ├── definition-7.5-x86_64-noX.cfg
        ├── kickstart
        │   └── <Debian-7.5-noarch-noX.cfg, Debian-7.5-noarch-desktop.cfg, ...>
        ├── validate
        │   └── <adm_features.sh, adm_context.txt, adm_envrc, test_puppet.sh, test_ruby.sh, test_virtualbox.sh, test_vagrant, ....sh >
        └── postinstall
            └── <adm_postinstall.sh, adm_context.txt, adm_envrc, base.sh, cleanup.sh, puppet.sh, ruby.sh, virtualbox.sh, ....sh >
```

```
    drwxr-xr-x  .
    drwxr-xr-x. ..
    lrwxrwxrwx  definition.cfg -> definition-6.5-x86_64-noX.cfg
    -rw-r--r--  definition-6.4-i386-noX.cfg
    -rw-r--r--  definition-6.4-x86_64-noX.cfg
    -rw-r--r--  definition-6.5-i386-noX.cfg
    -rw-r--r--  definition-6.5-x86_64-noX.cfg
    drwxr-xr-x  iso
    drwxr-xr-x  keys
    drwxr-xr-x  kickstart
    drwxr-xr-x  postinstall
    drwxr-xr-x  validate
    -rw-r--r--  README.md
```

Howto update a symlink:
```
    ln -fs definition-6.5-i386.cfg definition.cfg
```

Description:
 - `postinstall dir` contain all scripts run during postinstall process
 - `validate dir` contain all scripts run during validate process
 - `kickstart dir` contain all files used during bootstrap process
 - each file in kickstart (e.g. `ks.cfg/preseed.cfg`) has descriptive names (`<OS_NAME>-<VERSION>-<ARCH>-<SPEC_DESC>.cfg`) e.g.: `redhat-6.3-x86_64-noX.cfg`, `redhat-6.4-x86_64-docker.cfg`, `debian-7.4-noarch-desktop.cfg`
 - **definition.cfg is a symlink** to a default vbkick definition
 - each definition has descriptive name e.g. `definition-6.3-x86_64-noX.cfg`, `definition-6.4-x86_64-noX.cfg`, `definition-6.5-x86_64-beta.cfg`
 - common settings should be moved to separate file (e.g. `common.cfg`) which is included by all definitions.
 - each template look after **"big" OS release**, e.g. `RedHat6`, `Redhat5`, `Debian7`, `Debian6`, `Ubuntu12.04`
 - OS ISOs and SSH keys are not included - `vbkick` downloads and creates them during the `build` process.
 - README.md file is required
 - Note: If you create Vagrant Base Box then use vagrant user and vagrant ssh keys, don't create thousands of other accounts (like vbkick, veewee, etc.)

# Maintenance info

TODO: list of distributions with date of "End of Life" (EOL)
