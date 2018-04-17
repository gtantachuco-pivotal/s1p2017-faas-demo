#!/bin/bash

watch kubectl get svc,pod,deploy -o wide -n riff-system
