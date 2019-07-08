# Mongoloid - mongodb backup tool

Daily backups to Google cloud storage
Requires a mongodb connection URI (`MONGO_URI`) and a GS token (`GS_TOKEN`)

You can obtain the token with `gsutil config`,
it is the token that the tool wants you to paste after authenticating.

Run once with env var `RUN_ONCE=true`
