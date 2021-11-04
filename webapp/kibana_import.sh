#!/bin/bash

curl -X POST "https://kibana.localdomain/api/saved_objects/_import" -k -H "kbn-xsrf: true" --form file=@./webapp/export.ndjson
