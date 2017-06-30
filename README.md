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
        purge                   Clear docker images isn't registered in SAM database.
        list                    List installed applications.
        search, se              Search image version in remote repository.
        info                    Print application info.
     
        export, ex              Export images list or archive.
        import, im              Import images list or archive.

     Repository Management:
        addrepo, ar             Add a new repository.
        removerepo, rr          Remove specified repository.
        modifyrepo, mr          Modify specified repository.
        listrepos, lr           List all defined repositories.

# Building .deb package #

Command for building to ubuntu:
     BUILD_NUMBER=0 ./deb-builder.sh 

Result:
     sam-\<version\>.deb

Variable BUILD_NUMBER is needed for jenkins. Default: SNAPSHOT

