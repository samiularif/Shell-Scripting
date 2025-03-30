#!/bin/bash

#this script runs automated tests for the application

#run unit tests
pytest tests/unit

#run integration tests
pytest tests/integration 

#run system tests
pytest tests/system

#run performance tests
pytest tests/performance

#run security tests
pytest tests/security

#run load tests
pytest tests/load

#run stress tests
pytest tests/stress

echo "All tests passed"