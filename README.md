# SMILART APPLICATION MANAGER #

  Usage:
        sam [--global-options] <command> [--command-options] [arguments]

  Global Options:
        --help, -h              Help.
        --debug, -x             Debug mode.


  Commands:
        help, ?                 Print help.
     
     Software Management:
        install, in             Install applications.
        installfile             Install applications from archive.
        remove, rm              Remove applications.
        list                    List installed applications.
        search, se              Search image version on private docker registry.
        info                    Print application info.

     Repository Management:
        addrepo, ar             Add a new repository.
        removerepo, rr          Remove specified repository.
        modifyrepo, mr          Modify specified repository.
        listrepos, lr           List all defined repositories.