# SMILART APPLICATION MANAGER #

  Usage:
        sam [--global-options] <command> [--command-options] [arguments]

  Global Options:
        --help, -h              Help.
        --debug, -x             Debug mode.

  Commands:
        help                    Print help.

     Software Management:
        install, in             Install applications.
        remove, rm              Remove applications.
        purge                   Cleare images of the docker not registered in sam.
        list                    List installed applications.
        search, se              Search image version on private registry.
        info                    Print application info.
        upgrade, up             Upgrade Smilart Os.
     
        export, ex              Export images list or archive.
        import, im              Import images list or archive.

     Repository Management:
        addrepo, ar             Add a new repository.
        removerepo, rr          Remove specified repository.
        modifyrepo, mr          Modify specified repository.
        listrepos, lr           List all defined repositories.

