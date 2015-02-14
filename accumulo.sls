accumulo:
  version: 1.6.1
  config:
    instance_name: accumulo
    log_level: WARN
    memory_profile: 512MB
    accumulo-site:
      table.cache.block.enable:
        value: 'true'
      table.cache.index.enable:
        value: 'true'
      trace.user:
        value: root
      crypto.module.class:
        value: org.apache.accumulo.core.security.crypto.DefaultCryptoModule
      crypto.cipher.suite:
        value: AES/CFB/NoPadding
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
