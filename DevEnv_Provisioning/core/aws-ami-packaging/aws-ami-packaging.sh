#!/bin/bash

packer build -var-file=%1 aws-ami-packaging.json