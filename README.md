# Generalized Fetch & Run script for AWS Batch

AWS provides a [Fetch & Run](https://aws.amazon.com/blogs/compute/creating-a-simple-fetch-and-run-aws-batch-job/) mechanism for AWS Batch. 
This makes it possible for Batch jobs to run a script stored in S3.

This repository contains a slightly modified version of that
code which makes it possible for Batch jobs to run a script
that can be downloaded from any publicly accessible URL.
This allows you to store your script in GitHub, for example,
and saves you the extra step of then copying it to S3.

This script expects you to set two environment variables, 
`BATCH_FILE_TYPE` and `BATCH_FILE_URL`. 
(In the original, S3-based version, the latter variable was
called `BATCH_FILE_S3_URL`).

`BATCH_FILE_TYPE` should be set to either `script` or `zip`.
Set it to `script` if your Batch job script is a single file,
and set it to `zip` if you are providing the URL to a zip file.

Instructions for this script are pretty much identical to
[the original instructions](https://aws.amazon.com/blogs/compute/creating-a-simple-fetch-and-run-aws-batch-job/)
except that `BATCH_FILE_S3_URL` has been replaced with
`BATCH_FILE_URL`, and you can provide any publicly accessible
URL, as opposed to S3 URLs in the original.

## Simple Example

Start a job and define the following environment 
variables/values:

```
BATCH_FILE_TYPE=script
BATCH_FILE_URL=https://raw.githubusercontent.com/MyGitHubUserId/MyRepoName/master/MyScript.sh
```

**Note for GitHub users:**

Note that `BATCH_FILE_URL` points to the *raw* script on GitHub.
Do *not* use a url like `https://github.com/MyGitHubUserId/MyRepoName/blob/master/MyScript.sh`. Instead, click the `Raw` button in GitHub and then copy 
the resulting URL. It should always refer to the host 
`raw.githubusercontent.com`.

To specify the test script in the `fetch-and-run` directory
of this repository, use the following URL as the value 
of `BATCH_FILE_URL`:

```
https://raw.githubusercontent.com/FredHutch/git-fetch-and-run/master/fetch-and-run/myjob.sh
```

