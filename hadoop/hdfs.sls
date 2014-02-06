hdfs:
  config:
    namenode_port: 8020
    namenode_http_port: 50070
    secondarynamenode_http_port: 50090
    # the number of hdfs replicas is normally auto-configured for you by the hadoop-formula
    # according to the number of available datanodes
    # replication: 1
    hdfs-site:
      dfs.permission:
        value: 'false'
      dfs.durable.sync:
        value: 'true'
      dfs.datanode.synconclose:
        value: 'true'
