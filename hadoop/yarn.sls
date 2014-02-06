yarn:
  config:
    yarn-site:
      yarn.nodemanager.aux-services:
        value: mapreduce_shuffle
      yarn.nodemanager.aux-services.mapreduce.shuffle.class:
        value: org.apache.hadoop.mapred.ShuffleHandler
      yarn.resourcemanager.scheduler.class:
        value: org.apache.hadoop.yarn.server.resourcemanager.scheduler.capacity.CapacityScheduler

