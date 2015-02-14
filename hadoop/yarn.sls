yarn:
  config:
    yarn-site:
      yarn.nodemanager.aux-services:
        value: mapreduce_shuffle
      yarn.nodemanager.aux-services.mapreduce.shuffle.class:
        value: org.apache.hadoop.mapred.ShuffleHandler
      yarn.resourcemanager.scheduler.class:
        value: org.apache.hadoop.yarn.server.resourcemanager.scheduler.capacity.CapacityScheduler
      yarn.log-aggregation-enable:
        value: 'true'
    capacity-scheduler:
      yarn.scheduler.capacity.maximum-applications:
        value: 10000
      yarn.scheduler.capacity.resource-calculator:
        value: org.apache.hadoop.yarn.util.resource.DefaultResourceCalculator
      yarn.scheduler.capacity.root.queues:
        value: default
      yarn.scheduler.capacity.root.capacity:
        value: 100
      yarn.scheduler.capacity.root.default.capacity:
        value: 100
      yarn.scheduler.capacity.root.default.user-limit-factor:
        value: 1
      yarn.scheduler.capacity.root.default.maximum-capacity:
        value: 100
      yarn.scheduler.capacity.root.default.state:
        value: RUNNING
      yarn.scheduler.capacity.root.default.acl_submit_applications:
        value: '*'
      yarn.scheduler.capacity.root.default.acl_administer_queue:
        value: '*'
      yarn.scheduler.capacity.node-locality-delay:
        value: -1


