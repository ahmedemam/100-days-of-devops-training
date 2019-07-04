# assignment 2 - docker networks 
# use differnet linux distros containers to chech curl cli tools version
# use two different terminal widnows to start bash in oth [centos:7] and [ubuntu:14.04] using -it
# docker container --rm // save cleanup 
docker container run --rm --it ubuntu:14.04 bash    # ubuntu 
docker container run --rm --it centos:7 bash        # centos 
# ensure curl is installed and on latest verison for distro 
    # ubuntu: curl
    # centos: curl

# check curl version 
