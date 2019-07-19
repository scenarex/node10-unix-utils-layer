# lambci-nodejs10.x Layer

An AWS lambci-nodejs10.x Lambda Layer. It makes use of the [lambci/docker-lambda](https://github.com/lambci/docker-lambda) images to add the zip utility and the bzip2 library to thethe live AWS Lambda node 10 environment.

Take into account that the files in local layer directory are copied to the AWS lambda environment /opt directory. You must run the zip utility like this `LD_LIBRARY_PATH=/opt/zip:$LD_LIBRARY_PATH /opt/zip/zip`


## Prerequisites

You'll need to have [Docker](https://www.docker.com/) installed. You can opt to use [Serverless](https://serverless.com) for deployment or simply run the `build.sh` file manually and upload the resulting `layer/zip` folder as a ZIP archive to the AWS online console.

## Deployment

```shell
sls deploy
```
