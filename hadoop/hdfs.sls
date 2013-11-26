hdfs:
  config:
    namenode_port: 8020
    namenode_http_port: 50070
    secondarynamenode_http_port: 50090
  hdfs-site:
    dfs.replication:
      value: 1
    dfs.permission:
      value: false
    dfs.durable.sync:
      value: true
    dfs.datanode.synconclose:
      value: true
