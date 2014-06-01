# Description

Scientific Linux 6 [vbkick](https://github.com/wilas/vbkick) template. Help creates Vagrant base boxes. Vagrant SSH insecure keys are used.

## Howto

### change definition (change the target of a symlink)
```
    ln -fs definition-6.5-x86_64-docker.cfg definition.cfg
```

### create new vagrant base box
```
    vbkick  build        SL_box
    vbkick  postinstall  SL_box
    vbkick  validate     SL_box
    vbkick  export       SL_box
```

### update existing vagrant base box
```
    vbkick  update       SL_box
    vbkick  validate     SL_box
    vbkick  export       SL_box
```
