#!/bin/sh

RELEASE=jhub
NAMESPACE=jhub

helm delete $RELEASE --purge
helm delete namespace $NAMESPACE
