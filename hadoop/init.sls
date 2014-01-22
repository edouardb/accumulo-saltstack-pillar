hadoop:
  config:
    tmp_dir: /var/lib/hadoop/tmp
    directory: /etc/hadoop/conf
    core-site:
      io.native.lib.available:
        value: true
      io.file.buffer.size:
        value: 65536
      fs.trash.interval:
        value: 60

