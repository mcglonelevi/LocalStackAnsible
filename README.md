# LocalStack Ansible

This is an experiment for managing a LocalStack Docker Environment via Ansible
and Make

## Instructions

First, run the Ansible playbook.

`cd provisioning`
`ansible-playbook playbook.yml`

By default, two queues will be created.  You here are the commands to manage queues:

Create a queue:
`make create-queue QUEUE="test"`

Create a message:
`make send-queue-message QUEUE="test" MESSAGE="asdf"`

Receive a message:
`make receive-queue-message QUEUE="test"`
