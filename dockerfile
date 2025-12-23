ubuntu@Dockerserver:~$ date
Tue Dec 23 05:02:11 UTC 2025
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ pwd
/home/ubuntu
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ ls -al
total 56
drwxr-x--- 4 ubuntu ubuntu  4096 Dec 22 05:03 .
drwxr-xr-x 3 root   root    4096 Dec 22 04:49 ..
-rw------- 1 ubuntu ubuntu   396 Dec 23 04:39 .bash_history
-rw-r--r-- 1 ubuntu ubuntu   220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 ubuntu ubuntu  3771 Mar 31  2024 .bashrc
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:56 .cache
-rw-r--r-- 1 ubuntu ubuntu   807 Mar 31  2024 .profile
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:49 .ssh
-rw-r--r-- 1 ubuntu ubuntu     0 Dec 22 04:58 .sudo_as_admin_successful
-rw-rw-r-- 1 ubuntu ubuntu 22396 Dec 22 05:03 install-docker.sh
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ docker image ls
                                               i Info →   U  In Use
IMAGE   ID             DISK USAGE   CONTENT SIZE   EXTRA
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ docker container ls
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ docker volume ls
DRIVER    VOLUME NAME
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ ls -al
total 56
drwxr-x--- 4 ubuntu ubuntu  4096 Dec 22 05:03 .
drwxr-xr-x 3 root   root    4096 Dec 22 04:49 ..
-rw------- 1 ubuntu ubuntu   396 Dec 23 04:39 .bash_history
-rw-r--r-- 1 ubuntu ubuntu   220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 ubuntu ubuntu  3771 Mar 31  2024 .bashrc
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:56 .cache
-rw-r--r-- 1 ubuntu ubuntu   807 Mar 31  2024 .profile
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:49 .ssh
-rw-r--r-- 1 ubuntu ubuntu     0 Dec 22 04:58 .sudo_as_admin_successful
-rw-rw-r-- 1 ubuntu ubuntu 22396 Dec 22 05:03 install-docker.sh
ubuntu@Dockerserver:~$ mkdir FIRSTDOCKER
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ ls -al
total 60
drwxr-x--- 5 ubuntu ubuntu  4096 Dec 23 05:04 .
drwxr-xr-x 3 root   root    4096 Dec 22 04:49 ..
-rw------- 1 ubuntu ubuntu   396 Dec 23 04:39 .bash_history
-rw-r--r-- 1 ubuntu ubuntu   220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 ubuntu ubuntu  3771 Mar 31  2024 .bashrc
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:56 .cache
-rw-r--r-- 1 ubuntu ubuntu   807 Mar 31  2024 .profile
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:49 .ssh
-rw-r--r-- 1 ubuntu ubuntu     0 Dec 22 04:58 .sudo_as_admin_successful
drwxrwxr-x 2 ubuntu ubuntu  4096 Dec 23 05:04 FIRSTDOCKER
-rw-rw-r-- 1 ubuntu ubuntu 22396 Dec 22 05:03 install-docker.sh
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ cd FIRSTDOCKER
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ pwd
/home/ubuntu/FIRSTDOCKER
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ ls -al
total 8
drwxrwxr-x 2 ubuntu ubuntu 4096 Dec 23 05:04 .
drwxr-x--- 5 ubuntu ubuntu 4096 Dec 23 05:04 ..
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ vi Dockerfile
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ ls -al
total 12
drwxrwxr-x 2 ubuntu ubuntu 4096 Dec 23 05:08 .
drwxr-x--- 5 ubuntu ubuntu 4096 Dec 23 05:08 ..
-rw-rw-r-- 1 ubuntu ubuntu   85 Dec 23 05:08 Dockerfile
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ cat Dockerfile
FROM ubuntu
RUN apt-get update
CMD ["echo", "Hello, This is my First Docker file"]
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ docker image build -t syamimage .
[+] Building 12.4s (6/6) FINISHED                                      docker:default
 => [internal] load build definition from Dockerfile                             0.1s
 => => transferring dockerfile: 122B                                             0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                 1.8s
 => [internal] load .dockerignore                                                0.0s
 => => transferring context: 2B                                                  0.0s
 => [1/2] FROM docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0f  1.9s
 => => resolve docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0f  0.0s
 => => sha256:20043066d3d5c78b45520c5707319835ac7d1f3d7f0dded 29.72MB / 29.72MB  0.6s
 => => extracting sha256:20043066d3d5c78b45520c5707319835ac7d1f3d7f0dded0138ea0  1.2s
 => [2/2] RUN apt-get update                                                     4.8s
 => exporting to image                                                           3.7s
 => => exporting layers                                                          2.9s
 => => exporting manifest sha256:8a719d78d78bcf43c0cdbb878827caa0b102424c84204c  0.0s
 => => exporting config sha256:09fc28cec11a9e8315aa7e8f23cc5fb768c1460b449d0182  0.0s
 => => exporting attestation manifest sha256:0da6afb8787ba2058f189ab9c37b9788b2  0.0s
 => => exporting manifest list sha256:990fb45915e10f5d424af19b7d944e01e417c6a69  0.0s
 => => naming to docker.io/library/syamimage:latest                              0.0s
 => => unpacking to docker.io/library/syamimage:latest                           0.7s
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ docker image ls
                                                                  i Info →   U  In Use
IMAGE              ID             DISK USAGE   CONTENT SIZE   EXTRA
syamimage:latest   990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ docker image build -t satyanarayana .
[+] Building 0.7s (6/6) FINISHED                                                    docker:default
 => [internal] load build definition from Dockerfile                                          0.0s
 => => transferring dockerfile: 122B                                                          0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                              0.4s
 => [internal] load .dockerignore                                                             0.0s
 => => transferring context: 2B                                                               0.0s
 => [1/2] FROM docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0fd75374fec4fff  0.0s
 => => resolve docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0fd75374fec4fff  0.0s
 => CACHED [2/2] RUN apt-get update                                                           0.0s
 => exporting to image                                                                        0.1s
 => => exporting layers                                                                       0.0s
 => => exporting manifest sha256:8a719d78d78bcf43c0cdbb878827caa0b102424c84204c2a9097acde820  0.0s
 => => exporting config sha256:09fc28cec11a9e8315aa7e8f23cc5fb768c1460b449d0182dd7889f7e9a8d  0.0s
 => => exporting attestation manifest sha256:8e1bd672cd356ba9eec8d9a9b4a19b89e47b2c5c1516699  0.0s
 => => exporting manifest list sha256:88be329b3ab74e86e0611de054f9dbd30b3e2cc9b78527aee792d8  0.0s
 => => naming to docker.io/library/satyanarayana:latest                                       0.0s
 => => unpacking to docker.io/library/satyanarayana:latest                                    0.0s
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ docker image ls
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ pwd
/home/ubuntu/FIRSTDOCKER
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$
ubuntu@Dockerserver:~/FIRSTDOCKER$ cd ..
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ pwd
/home/ubuntu
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ ls -al
total 68
drwxr-x--- 6 ubuntu ubuntu  4096 Dec 23 05:10 .
drwxr-xr-x 3 root   root    4096 Dec 22 04:49 ..
-rw------- 1 ubuntu ubuntu   396 Dec 23 04:39 .bash_history
-rw-r--r-- 1 ubuntu ubuntu   220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 ubuntu ubuntu  3771 Mar 31  2024 .bashrc
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:56 .cache
drwx------ 3 ubuntu ubuntu  4096 Dec 23 05:10 .docker
-rw-r--r-- 1 ubuntu ubuntu   807 Mar 31  2024 .profile
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:49 .ssh
-rw-r--r-- 1 ubuntu ubuntu     0 Dec 22 04:58 .sudo_as_admin_successful
-rw------- 1 ubuntu ubuntu   887 Dec 23 05:08 .viminfo
drwxrwxr-x 2 ubuntu ubuntu  4096 Dec 23 05:08 FIRSTDOCKER
-rw-rw-r-- 1 ubuntu ubuntu 22396 Dec 22 05:03 install-docker.sh
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ mkdir NGINXDOCKER
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ ls -al
total 72
drwxr-x--- 7 ubuntu ubuntu  4096 Dec 23 05:18 .
drwxr-xr-x 3 root   root    4096 Dec 22 04:49 ..
-rw------- 1 ubuntu ubuntu   396 Dec 23 04:39 .bash_history
-rw-r--r-- 1 ubuntu ubuntu   220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 ubuntu ubuntu  3771 Mar 31  2024 .bashrc
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:56 .cache
drwx------ 3 ubuntu ubuntu  4096 Dec 23 05:10 .docker
-rw-r--r-- 1 ubuntu ubuntu   807 Mar 31  2024 .profile
drwx------ 2 ubuntu ubuntu  4096 Dec 22 04:49 .ssh
-rw-r--r-- 1 ubuntu ubuntu     0 Dec 22 04:58 .sudo_as_admin_successful
-rw------- 1 ubuntu ubuntu   887 Dec 23 05:08 .viminfo
drwxrwxr-x 2 ubuntu ubuntu  4096 Dec 23 05:08 FIRSTDOCKER
drwxrwxr-x 2 ubuntu ubuntu  4096 Dec 23 05:18 NGINXDOCKER
-rw-rw-r-- 1 ubuntu ubuntu 22396 Dec 22 05:03 install-docker.sh
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$
ubuntu@Dockerserver:~$ cd NGINXDOCKER/
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ pwd
/home/ubuntu/NGINXDOCKER
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ ls -al
total 8
drwxrwxr-x 2 ubuntu ubuntu 4096 Dec 23 05:18 .
drwxr-x--- 7 ubuntu ubuntu 4096 Dec 23 05:18 ..
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ vi Dockerfile
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ ls -al
total 12
drwxrwxr-x 2 ubuntu ubuntu 4096 Dec 23 05:21 .
drwxr-x--- 7 ubuntu ubuntu 4096 Dec 23 05:21 ..
-rw-rw-r-- 1 ubuntu ubuntu  121 Dec 23 05:21 Dockerfile
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ cat Dockerfile
FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
CMD ["echo", "Hello, We are installing Nginx Application"]
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image build -t nginximg .
[+] Building 6.7s (7/7) FINISHED                                                    docker:default
 => [internal] load build definition from Dockerfile                                          0.0s
 => => transferring dockerfile: 158B                                                          0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                              0.9s
 => [internal] load .dockerignore                                                             0.0s
 => => transferring context: 2B                                                               0.0s
 => [1/3] FROM docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0fd75374fec4fff  0.0s
 => => resolve docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0fd75374fec4fff  0.0s
 => CACHED [2/3] RUN apt-get update                                                           0.0s
 => [3/3] RUN apt-get install nginx -y                                                        5.0s
 => exporting to image                                                                        0.7s
 => => exporting layers                                                                       0.4s
 => => exporting manifest sha256:e54efa0f9540acd22a9aea4a01e44be4404ac48bd066569a7f5f59b5f56  0.0s
 => => exporting config sha256:a54b9d18119802c5c85656837df21f0de0e13530483a7649d8cf4e4e8ec6d  0.0s
 => => exporting attestation manifest sha256:6d2769f66e0ca4a01372c5841a9064948685b63fd00c8c0  0.0s
 => => exporting manifest list sha256:ea0701b699305841f509b9d59beb83cc283a73109b75916e025cef  0.0s
 => => naming to docker.io/library/nginximg:latest                                            0.0s
 => => unpacking to docker.io/library/nginximg:latest                                         0.1s
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image ls
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
nginximg:latest        ea0701b69930        225MB         72.1MB
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker images
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
nginximg:latest        ea0701b69930        225MB         72.1MB
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image list
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
nginximg:latest        ea0701b69930        225MB         72.1MB
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image --help
Usage:  docker image COMMAND

Manage images

Commands:
  build       Build an image from a Dockerfile
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Display detailed information on one or more images
  load        Load an image from a tar archive or STDIN
  ls          List images
  prune       Remove unused images
  pull        Download an image from a registry
  push        Upload an image to a registry
  rm          Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE

Run 'docker image COMMAND --help' for more information on a command.
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image ls
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
nginximg:latest        ea0701b69930        225MB         72.1MB
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image inspect syamimage:latest
[
    {
        "Id": "sha256:990fb45915e10f5d424af19b7d944e01e417c6a69b8afa3a219b34d4aee70c35",
        "RepoTags": [
            "syamimage:latest"
        ],
        "RepoDigests": [
            "syamimage@sha256:990fb45915e10f5d424af19b7d944e01e417c6a69b8afa3a219b34d4aee70c35"
        ],
        "Comment": "buildkit.dockerfile.v0",
        "Created": "2025-12-23T05:11:06.929885015Z",
        "Config": {
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
            ],
            "Cmd": [
                "echo",
                "Hello, This is my First Docker file"
            ],
            "Labels": {
                "org.opencontainers.image.ref.name": "ubuntu",
                "org.opencontainers.image.version": "24.04"
            },
            "ArgsEscaped": true
        },
        "Architecture": "amd64",
        "Os": "linux",
        "Size": 69636117,
        "RootFS": {
            "Type": "layers",
            "Layers": [
                "sha256:e8bce0aabd687e9ee90e0bada33884f40b277196f72aac9934357472863a80ae",
                "sha256:541405a68a2a2a0eae0941deee97a468bb7259e9002ab15bdbacd141f2c7b154"
            ]
        },
        "Metadata": {
            "LastTagTime": "2025-12-23T05:11:09.922406454Z"
        },
        "Descriptor": {
            "mediaType": "application/vnd.oci.image.index.v1+json",
            "digest": "sha256:990fb45915e10f5d424af19b7d944e01e417c6a69b8afa3a219b34d4aee70c35",
            "size": 855
        }
    }
]
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image build -t samplaeimage .
[+] Building 1.1s (7/7) FINISHED                                                    docker:default
 => [internal] load build definition from Dockerfile                                          0.0s
 => => transferring dockerfile: 158B                                                          0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                              0.8s
 => [internal] load .dockerignore                                                             0.0s
 => => transferring context: 2B                                                               0.0s
 => [1/3] FROM docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0fd75374fec4fff  0.0s
 => => resolve docker.io/library/ubuntu:latest@sha256:c35e29c9450151419d9448b0fd75374fec4fff  0.0s
 => CACHED [2/3] RUN apt-get update                                                           0.0s
 => CACHED [3/3] RUN apt-get install nginx -y                                                 0.0s
 => exporting to image                                                                        0.1s
 => => exporting layers                                                                       0.0s
 => => exporting manifest sha256:e54efa0f9540acd22a9aea4a01e44be4404ac48bd066569a7f5f59b5f56  0.0s
 => => exporting config sha256:a54b9d18119802c5c85656837df21f0de0e13530483a7649d8cf4e4e8ec6d  0.0s
 => => exporting attestation manifest sha256:d072d3dae5bad96018711182421ee53fc1287462b0ddac1  0.0s
 => => exporting manifest list sha256:34e9f38c4441e0fca8c19c1c9da2ab69eb9109c4dcd47aba20f128  0.0s
 => => naming to docker.io/library/samplaeimage:latest                                        0.0s
 => => unpacking to docker.io/library/samplaeimage:latest                                     0.0s
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image ls
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
nginximg:latest        ea0701b69930        225MB         72.1MB
samplaeimage:latest    34e9f38c4441        225MB         72.1MB
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image rm 34e9f38c4441
Untagged: samplaeimage:latest
Deleted: sha256:34e9f38c4441e0fca8c19c1c9da2ab69eb9109c4dcd47aba20f128c9f95546f7
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image ls
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
nginximg:latest        ea0701b69930        225MB         72.1MB
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image tag nginximg:latest ing
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$
ubuntu@Dockerserver:~/NGINXDOCKER$ docker image ls
                                                                               i Info →   U  In Use
IMAGE                  ID             DISK USAGE   CONTENT SIZE   EXTRA
ing:latest             ea0701b69930        225MB         72.1MB
nginximg:latest        ea0701b69930        225MB         72.1MB
satyanarayana:latest   88be329b3ab7        215MB         69.6MB
syamimage:latest       990fb45915e1        215MB         69.6MB
ubuntu@Dockerserver:~/NGINXDOCKER$

