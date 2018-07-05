import os
import json
import boto


class SpotInstances:
	"""docstring for ClassName"""
	file = open('credentials.json','r')
	data = json.load(file)

	conn = boto.ec2.connect_to_region("region", aws_access_key_id='access_key', aws_secret_access_key='secret_key')
	def start_instance(conn):
		conn.run_instances('ami-6ac2a85a', key_name='', instance_type='t1.micro', security_groups=[''])


ec2_instance = SpotInstances()
print ec2_instance.data
		