#!/bin/bash

celery -A core worker -B -l info -E