# make up
up:
	sudo docker-compose up -d

# make down
down:
	sudo docker-compose down

# make create-queue QUEUE=test_queue
create-queue:
	aws --endpoint-url=http://localhost:4576 sqs create-queue --queue-name $(QUEUE)

# make send-queue-message QUEUE=test_queue MESSAGE="test message"
send-queue-message:
	aws --endpoint-url=http://localhost:4576 sqs send-message --queue-url http://localhost:4576/queue/$(QUEUE) --message-body "$(MESSAGE)"

# make receive-queue-message QUEUE=test_queue
receive-queue-message:
	aws --endpoint-url=http://localhost:4576 sqs receive-message --queue-url http://localhost:4576/queue/$(QUEUE)
