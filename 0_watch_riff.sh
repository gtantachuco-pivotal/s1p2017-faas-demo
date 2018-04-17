#!/bin/bash

watch kubectl get function,topic,svc,pod,deploy -o wide -n riff-system
