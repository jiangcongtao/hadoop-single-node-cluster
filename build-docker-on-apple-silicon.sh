docker buildx build --network=host --platform linux/amd64 --build-arg HADOOP_VERSION=3.3.5 -t jiangcongtao/hadoop-single-node-cluster:3.3.5 .

# docker buildx build --network=host --platform linux/amd64 --build-arg HADOOP_VERSION=3.3.3 -t jiangcongtao/hadoop-single-node-cluster:3.3.3 .