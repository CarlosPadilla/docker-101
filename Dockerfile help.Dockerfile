FROM <image>:<tag>
FROM must be the first non-comment instruction in the Dockerfile.

MAINTAINER <name>
The MAINTAINER instruction allows you to set the Author field of the generated images.

RUN <command> (shell form, the command is run in a shell, which by default is /bin/sh -c on Linux or cmd /S /C on Windows)
RUN ["<executable>", "<param1>", "<param2>"] (exec form)
RUN commands using a base image that does not contain the specified shell executable.

CMD ["<executable>","<param1>","<param2>"] (exec form, this is the preferred form)
The main purpose of a CMD is to provide defaults for an executing container

EXPOSE <port> [<port> ...]
Informs Docker that the container listens on the specified network port(s) at runtime.

ADD <src> [<src> ...] <dest>
Copies new files, directories, or remote file URLs from <src> and adds them to the filesystem of the image at the path <dest>.

COPY ["<src>", ... "<dest>"]
Copies new files or directories

WORKDIR </path/to/workdir>
Sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, and ADD instructions that follow it.

