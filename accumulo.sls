accumulo:
  version: 1.5.0
  source_url: http://www.us.apache.org/dist/accumulo/1.5.0/accumulo-1.5.0-bin.tar.gz
  sources:
    source_url: http://www.us.apache.org/dist/accumulo/1.5.0/accumulo-1.5.0-src.tar.gz
    version_name: accumulo-1.5.0-src
  native:
    source_url: http://www.us.apache.org/dist/accumulo/1.5.0/accumulo-1.5.0-src.tar.gz
    version_name: accumulo-1.5.0-src
  config:
    instance_name: accumulo
    log_level: WARN
    memory_profile: 512MB
    accumulo-site:
      trace.user:
        value: root
      crypto.module.class:
        value: org.apache.accumulo.core.security.crypto.DefaultCryptoModule
      crypto.cipher.suite:
        value: AES/CFB/PKCS5Padding
      crypto.cipher.algorithm.name:
        value: AES
      crypto.cipher.key.length:
        value: 128
      crypto.secure.rng:
        value: SHA1PRNG
      crypto.secure.rng.provider:
        value: SUN
      crypto.secret.key.encryption.strategy.class:
        value: org.apache.accumulo.core.security.crypto.CachingHDFSSecretKeyEncryptionStrategy
      crypto.default.key.strategy.cipher.suite:
        value: AES/ECB/NoPadding
