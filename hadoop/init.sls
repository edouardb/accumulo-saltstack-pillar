hadoop:
  # values currently supported in hadoop-formula: ['apache-1.2.1', 'apache-2.2.0', 'hdp-1.3.0', 'hdp-2.2.0', 'cdh-4.5.0', 'cdh-4.5.0-mr1']
  version: apache-2.2.0
  config:
    tmp_dir: /tmp
    directory: /etc/hadoop/conf
    core-site:
      io.native.lib.available:
        value: true
      io.file.buffer.size:
        value: 65536
      fs.trash.interval:
        value: 60

