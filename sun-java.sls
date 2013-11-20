java:
  source: http://sroegner-install.s3.amazonaws.com/jdk-linux-server-x64-1.7.0.25_17-bin.tar.gz
  source_hash: sha1=ae5f882bdfd596d4d32ff0494a3ffa0435e9dfd8
  version_name: jdk-linux-server-x64-1.7.0.25_17
  tgz: {{ grains.get('java_tgz', 'jdk-linux-server-x64-1.7.0.25_17-bin.tar.gz') }}
  prefix: /usr/share/java

