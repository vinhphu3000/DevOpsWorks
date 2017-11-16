from sys import argv
import json
import re

script, manifest_json_file = argv

with open(manifest_json_file) as provisioned_ami_manifest:
    manifest_str = json.load(provisioned_ami_manifest)

last_run_uuid = manifest_str['last_run_uuid']

for build in manifest_str['builds']:
    if build['packer_run_uuid'] == last_run_uuid:
        provisioned_ami = build['artifact_id']

pattern = re.compile(r"\:")
ami_id = pattern.split(provisioned_ami)

print ami_id[1]
