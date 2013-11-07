accumulo-saltstack-pillar
=========================

Pillar files to go with the `accumulo-saltstack <https://github.com/accumulo/accumulo-saltstack>`_ project.
For your own provisioning you probably want to go with a fork of this.

Master configuration
********************

This particular or any of your pillar projects can be used on a Salt master by pulling it in as-is through an ext_pillar configuration in **/etc/salt/master**.

::

  ext_pillar:
    - git: master https://github.com/accumulo/accumulo-saltstack-pillar.git
