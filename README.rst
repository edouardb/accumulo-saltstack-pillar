accumulo-saltstack-pillar
=========================

Pillar files to go as defaults with the `accumulo-saltstack <https://github.com/accumulo/accumulo-saltstack>` and
`accumulo-saltstack <https://github.com/accumulo/hadoop-salt>` projects.

Most of the values are just reflecting the internal defaults of the formulas that are using them.
For your own provisioning you can use a modified copy or fork of this.

Master configuration
********************

This particular or any of your pillar projects can be used on a Salt master by pulling it in as-is through an ext_pillar configuration in **/etc/salt/master**.

::

  ext_pillar:
    - git: master https://github.com/accumulo/accumulo-saltstack-pillar.git

Hadoop and Accumulo configuration
*********************************

The hadoop and accumulo formulas expose the general (cluster-independent) part of their main configuration files (Hadoop: core-site.xml, hdfs-site.sml, mapred-site.xml, Accumulo: accumulo-site.xml) 
as pillar keys.

Example:
::

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

Where the core-site part will appear in core-site.xml as:
::

    <property>
        <name>io.native.lib.available</name>
        <value>True</value>
    </property>

    <property>
        <name>fs.trash.interval</name>
        <value>60</value>
    </property>

    <property>
        <name>io.file.buffer.size</name>
        <value>65536</value>
    </property>

Please note that host- and cluster-specific values are not exposed (think: fs.default.name)

