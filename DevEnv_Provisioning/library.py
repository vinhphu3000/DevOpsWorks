from sys import argv
import json
import re

script, manifest_json_file = argv

with open(manifest_json_file) as provisioned_ami_manifest:
    manifest_str = json.load(provisioned_ami_manifest)

provisioned_ami = manifest_str['builds'][0]['artifact_id']

pattern = re.compile(r"\:")
ami_id = pattern.split(provisioned_ami)
print ami_id[1]
