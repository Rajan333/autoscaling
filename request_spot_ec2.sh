#!/bin/bash
##__AUTHOR: RAJAN MIDDHA__##

request_spot(){

	SPOT_PRICE="0.2"
	INSTANCE_COUNT="2"
	TYPE="one-time"
	SPECIFICATION_FILE="/Users/rajan/ns/autoscaling/specifications.json"

	aws ec2 request-spot-instances --dry-run --spot-price "${SPOT_PRICE}" --instance-count "${INSTANCE_COUNT}" --type "$TYPE" --launch-specification file://"${SPECIFICATION_FILE}"
}

request_spot
