# Description

Fedora 20 [vbkick](https://github.com/wilas/vbkick) template. Help creates Vagrant base boxes. Vagrant SSH insecure keys are used.

## Howto

### change definition (change the target of a symlink)
```
    ln -fs vbmachine-20-x86_64-docker.cfg vbmachine.cfg
```

### create new vagrant base box
```
    vbkick  build        Fedora_box
    vbkick  postinstall  Fedora_box
    vbkick  validate     Fedora_box
    vbkick  export       Fedora_box
```

### update existing vagrant base box
```
    vbkick  update       Fedora_box
    vbkick  validate     Fedora_box
    vbkick  export       Fedora_box
```
