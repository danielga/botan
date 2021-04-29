Pod::Spec.new do |s|
    s.name     = 'botan'
    s.version  = '2.18.0'
    s.license  = 'BSD 2-Clause License'
    s.summary  = 'Cryptography Toolkit'
    s.homepage = 'https://github.com/randombit/botan'
    s.authors  = 'Botan Authors'
    s.source   = { :git => 'https://github.com/randombit/botan.git', :tag => s.version.to_s }

    s.swift_version = '5.0'
    s.ios.deployment_target = '10.0'

    s.libraries = 'bz2', 'sqlite3', 'z'

    s.source_files = 'include/botan/**/*.h'
    s.header_mappings_dir = 'include'

    s.pod_target_xcconfig = { 'USE_HEADERMAP' => 'NO' }

    s.subspec 'lib' do |sp|
        sp.subspec 'kdf' do |ssp|
            ssp.source_files = 'src/lib/kdf/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/kdf/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'sp800_56a' do |sssp|
                sssp.source_files = 'src/lib/kdf/sp800_56a/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/sp800_56a/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'prf_tls' do |sssp|
                sssp.source_files = 'src/lib/kdf/prf_tls/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/prf_tls/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'prf_x942' do |sssp|
                sssp.source_files = 'src/lib/kdf/prf_x942/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/prf_x942/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'kdf1' do |sssp|
                sssp.source_files = 'src/lib/kdf/kdf1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/kdf1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'kdf1_iso18033' do |sssp|
                sssp.source_files = 'src/lib/kdf/kdf1_iso18033/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/kdf1_iso18033/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'hkdf' do |sssp|
                sssp.source_files = 'src/lib/kdf/hkdf/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/hkdf/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sp800_108' do |sssp|
                sssp.source_files = 'src/lib/kdf/sp800_108/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/sp800_108/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sp800_56c' do |sssp|
                sssp.source_files = 'src/lib/kdf/sp800_56c/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/sp800_56c/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'kdf2' do |sssp|
                sssp.source_files = 'src/lib/kdf/kdf2/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/kdf/kdf2/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'misc' do |ssp|
            ssp.subspec 'nist_keywrap' do |sssp|
                sssp.source_files = 'src/lib/misc/nist_keywrap/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/nist_keywrap/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'srp6' do |sssp|
                sssp.source_files = 'src/lib/misc/srp6/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/srp6/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'aont' do |sssp|
                sssp.source_files = 'src/lib/misc/aont/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/aont/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'fpe_fe1' do |sssp|
                sssp.source_files = 'src/lib/misc/fpe_fe1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/fpe_fe1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'hotp' do |sssp|
                sssp.source_files = 'src/lib/misc/hotp/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/hotp/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'tss' do |sssp|
                sssp.source_files = 'src/lib/misc/tss/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/tss/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cryptobox' do |sssp|
                sssp.source_files = 'src/lib/misc/cryptobox/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/cryptobox/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'roughtime' do |sssp|
                sssp.source_files = 'src/lib/misc/roughtime/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/roughtime/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'rfc3394' do |sssp|
                sssp.source_files = 'src/lib/misc/rfc3394/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/misc/rfc3394/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'asn1' do |ssp|
            ssp.source_files = 'src/lib/asn1/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/asn1/*.h'
            ssp.header_mappings_dir = 'src/lib'
        end

        sp.subspec 'filters' do |ssp|
            ssp.source_files = 'src/lib/filters/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/filters/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'fd_unix' do |sssp|
                sssp.source_files = 'src/lib/filters/fd_unix/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/filters/fd_unix/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'compat' do |ssp|
            ssp.subspec 'sodium' do |sssp|
                sssp.source_files = 'src/lib/compat/sodium/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/compat/sodium/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'modes' do |ssp|
            ssp.source_files = 'src/lib/modes/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/modes/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'aead' do |sssp|
                sssp.source_files = 'src/lib/modes/aead/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/modes/aead/*.h'
                sssp.header_mappings_dir = 'src/lib'

                sssp.subspec 'eax' do |ssssp|
                    ssssp.source_files = 'src/lib/modes/aead/eax/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/modes/aead/eax/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end

                sssp.subspec 'gcm' do |ssssp|
                    ssssp.source_files = 'src/lib/modes/aead/gcm/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/modes/aead/gcm/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end

                sssp.subspec 'ccm' do |ssssp|
                    ssssp.source_files = 'src/lib/modes/aead/ccm/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/modes/aead/ccm/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end

                sssp.subspec 'siv' do |ssssp|
                    ssssp.source_files = 'src/lib/modes/aead/siv/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/modes/aead/siv/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end

                sssp.subspec 'ocb' do |ssssp|
                    ssssp.source_files = 'src/lib/modes/aead/ocb/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/modes/aead/ocb/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end

                sssp.subspec 'chacha20poly1305' do |ssssp|
                    ssssp.source_files = 'src/lib/modes/aead/chacha20poly1305/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/modes/aead/chacha20poly1305/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end
            end

            ssp.subspec 'xts' do |sssp|
                sssp.source_files = 'src/lib/modes/xts/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/modes/xts/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cbc' do |sssp|
                sssp.source_files = 'src/lib/modes/cbc/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/modes/cbc/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'mode_pad' do |sssp|
                sssp.source_files = 'src/lib/modes/mode_pad/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/modes/mode_pad/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cfb' do |sssp|
                sssp.source_files = 'src/lib/modes/cfb/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/modes/cfb/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'hash' do |ssp|
            ssp.source_files = 'src/lib/hash/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/hash/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'par_hash' do |sssp|
                sssp.source_files = 'src/lib/hash/par_hash/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/par_hash/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'md4' do |sssp|
                sssp.source_files = 'src/lib/hash/md4/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/md4/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'md5' do |sssp|
                sssp.source_files = 'src/lib/hash/md5/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/md5/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sha2_32' do |sssp|
                sssp.source_files = 'src/lib/hash/sha2_32/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/sha2_32/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'blake2' do |sssp|
                sssp.source_files = 'src/lib/hash/blake2/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/blake2/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sha3' do |sssp|
                sssp.source_files = 'src/lib/hash/sha3/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/sha3/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'shake' do |sssp|
                sssp.source_files = 'src/lib/hash/shake/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/shake/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'streebog' do |sssp|
                sssp.source_files = 'src/lib/hash/streebog/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/streebog/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'tiger' do |sssp|
                sssp.source_files = 'src/lib/hash/tiger/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/tiger/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'keccak' do |sssp|
                sssp.source_files = 'src/lib/hash/keccak/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/keccak/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sha2_64' do |sssp|
                sssp.source_files = 'src/lib/hash/sha2_64/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/sha2_64/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sm3' do |sssp|
                sssp.source_files = 'src/lib/hash/sm3/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/sm3/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sha1' do |sssp|
                sssp.source_files = 'src/lib/hash/sha1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/sha1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'skein' do |sssp|
                sssp.source_files = 'src/lib/hash/skein/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/skein/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'whirlpool' do |sssp|
                sssp.source_files = 'src/lib/hash/whirlpool/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/whirlpool/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'rmd160' do |sssp|
                sssp.source_files = 'src/lib/hash/rmd160/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/rmd160/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'gost_3411' do |sssp|
                sssp.source_files = 'src/lib/hash/gost_3411/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/gost_3411/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'mdx_hash' do |sssp|
                sssp.source_files = 'src/lib/hash/mdx_hash/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/mdx_hash/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'checksum' do |sssp|
                sssp.subspec 'adler32' do |ssssp|
                    ssssp.source_files = 'src/lib/hash/checksum/adler32/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/hash/checksum/adler32/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end

                sssp.subspec 'crc32' do |ssssp|
                    ssssp.source_files = 'src/lib/hash/checksum/crc32/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/hash/checksum/crc32/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end

                sssp.subspec 'crc24' do |ssssp|
                    ssssp.source_files = 'src/lib/hash/checksum/crc24/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/hash/checksum/crc24/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end
            end

            ssp.subspec 'comb4p' do |sssp|
                sssp.source_files = 'src/lib/hash/comb4p/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/hash/comb4p/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'pubkey' do |ssp|
            ssp.source_files = 'src/lib/pubkey/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/pubkey/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'dl_group' do |sssp|
                sssp.source_files = 'src/lib/pubkey/dl_group/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/dl_group/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'pem' do |sssp|
                sssp.source_files = 'src/lib/pubkey/pem/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/pem/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ec_group' do |sssp|
                sssp.source_files = 'src/lib/pubkey/ec_group/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/ec_group/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ecdsa' do |sssp|
                sssp.source_files = 'src/lib/pubkey/ecdsa/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/ecdsa/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'rfc6979' do |sssp|
                sssp.source_files = 'src/lib/pubkey/rfc6979/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/rfc6979/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'dh' do |sssp|
                sssp.source_files = 'src/lib/pubkey/dh/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/dh/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ecies' do |sssp|
                sssp.source_files = 'src/lib/pubkey/ecies/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/ecies/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'mceies' do |sssp|
                sssp.source_files = 'src/lib/pubkey/mceies/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/mceies/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'xmss' do |sssp|
                sssp.source_files = 'src/lib/pubkey/xmss/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/xmss/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'elgamal' do |sssp|
                sssp.source_files = 'src/lib/pubkey/elgamal/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/elgamal/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cecpq1' do |sssp|
                sssp.source_files = 'src/lib/pubkey/cecpq1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/cecpq1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'pbes2' do |sssp|
                sssp.source_files = 'src/lib/pubkey/pbes2/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/pbes2/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'newhope' do |sssp|
                sssp.source_files = 'src/lib/pubkey/newhope/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/newhope/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'rsa' do |sssp|
                sssp.source_files = 'src/lib/pubkey/rsa/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/rsa/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'dlies' do |sssp|
                sssp.source_files = 'src/lib/pubkey/dlies/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/dlies/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'dsa' do |sssp|
                sssp.source_files = 'src/lib/pubkey/dsa/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/dsa/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'dl_algo' do |sssp|
                sssp.source_files = 'src/lib/pubkey/dl_algo/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/dl_algo/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ecgdsa' do |sssp|
                sssp.source_files = 'src/lib/pubkey/ecgdsa/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/ecgdsa/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'mce' do |sssp|
                sssp.source_files = 'src/lib/pubkey/mce/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/mce/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'eckcdsa' do |sssp|
                sssp.source_files = 'src/lib/pubkey/eckcdsa/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/eckcdsa/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ecc_key' do |sssp|
                sssp.source_files = 'src/lib/pubkey/ecc_key/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/ecc_key/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'keypair' do |sssp|
                sssp.source_files = 'src/lib/pubkey/keypair/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/keypair/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sm2' do |sssp|
                sssp.source_files = 'src/lib/pubkey/sm2/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/sm2/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ecdh' do |sssp|
                sssp.source_files = 'src/lib/pubkey/ecdh/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/ecdh/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ed25519' do |sssp|
                sssp.source_files = 'src/lib/pubkey/ed25519/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/ed25519/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'gost_3410' do |sssp|
                sssp.source_files = 'src/lib/pubkey/gost_3410/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/gost_3410/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'curve25519' do |sssp|
                sssp.source_files = 'src/lib/pubkey/curve25519/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pubkey/curve25519/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'codec' do |ssp|
            ssp.subspec 'hex' do |sssp|
                sssp.source_files = 'src/lib/codec/hex/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/codec/hex/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'base64' do |sssp|
                sssp.source_files = 'src/lib/codec/base64/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/codec/base64/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'base32' do |sssp|
                sssp.source_files = 'src/lib/codec/base32/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/codec/base32/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'base58' do |sssp|
                sssp.source_files = 'src/lib/codec/base58/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/codec/base58/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'stream' do |ssp|
            ssp.source_files = 'src/lib/stream/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/stream/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'rc4' do |sssp|
                sssp.source_files = 'src/lib/stream/rc4/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/stream/rc4/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ctr' do |sssp|
                sssp.source_files = 'src/lib/stream/ctr/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/stream/ctr/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'chacha' do |sssp|
                sssp.source_files = 'src/lib/stream/chacha/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/stream/chacha/*.h'
                sssp.header_mappings_dir = 'src/lib'

                sssp.subspec 'chacha_simd32' do |ssssp|
                    ssssp.source_files = 'src/lib/stream/chacha/chacha_simd32/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/stream/chacha/chacha_simd32/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end
            end

            ssp.subspec 'ofb' do |sssp|
                sssp.source_files = 'src/lib/stream/ofb/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/stream/ofb/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'shake_cipher' do |sssp|
                sssp.source_files = 'src/lib/stream/shake_cipher/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/stream/shake_cipher/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'salsa20' do |sssp|
                sssp.source_files = 'src/lib/stream/salsa20/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/stream/salsa20/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'entropy' do |ssp|
            ssp.source_files = 'src/lib/entropy/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/entropy/*.h'
            ssp.header_mappings_dir = 'src/lib'
        end

        sp.subspec 'pbkdf' do |ssp|
            ssp.source_files = 'src/lib/pbkdf/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/pbkdf/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'pbkdf2' do |sssp|
                sssp.source_files = 'src/lib/pbkdf/pbkdf2/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pbkdf/pbkdf2/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'argon2' do |sssp|
                sssp.source_files = 'src/lib/pbkdf/argon2/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pbkdf/argon2/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'pgp_s2k' do |sssp|
                sssp.source_files = 'src/lib/pbkdf/pgp_s2k/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pbkdf/pgp_s2k/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'bcrypt_pbkdf' do |sssp|
                sssp.source_files = 'src/lib/pbkdf/bcrypt_pbkdf/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pbkdf/bcrypt_pbkdf/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'pbkdf1' do |sssp|
                sssp.source_files = 'src/lib/pbkdf/pbkdf1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pbkdf/pbkdf1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'scrypt' do |sssp|
                sssp.source_files = 'src/lib/pbkdf/scrypt/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pbkdf/scrypt/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'utils' do |ssp|
            ssp.source_files = 'src/lib/utils/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/utils/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'thread_utils' do |sssp|
                sssp.source_files = 'src/lib/utils/thread_utils/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/thread_utils/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
            ssp.subspec 'mem_pool' do |sssp|
                sssp.source_files = 'src/lib/utils/mem_pool/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/mem_pool/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'dyn_load' do |sssp|
                sssp.source_files = 'src/lib/utils/dyn_load/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/dyn_load/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cpuid' do |sssp|
                sssp.source_files = 'src/lib/utils/cpuid/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/cpuid/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'simd' do |sssp|
                sssp.source_files = 'src/lib/utils/simd/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/simd/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'ghash' do |sssp|
                sssp.source_files = 'src/lib/utils/ghash/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/ghash/*.h'
                sssp.header_mappings_dir = 'src/lib'

                sssp.subspec 'ghash_cpu' do |ssssp|
                    ssssp.source_files = 'src/lib/utils/ghash/ghash_cpu/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/utils/ghash/ghash_cpu/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end
            end

            ssp.subspec 'sqlite3' do |sssp|
                sssp.source_files = 'src/lib/utils/sqlite3/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/sqlite3/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'http_util' do |sssp|
                sssp.source_files = 'src/lib/utils/http_util/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/http_util/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'poly_dbl' do |sssp|
                sssp.source_files = 'src/lib/utils/poly_dbl/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/poly_dbl/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'uuid' do |sssp|
                sssp.source_files = 'src/lib/utils/uuid/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/uuid/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'locking_allocator' do |sssp|
                sssp.source_files = 'src/lib/utils/locking_allocator/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/locking_allocator/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'socket' do |sssp|
                sssp.source_files = 'src/lib/utils/socket/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/utils/socket/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'math' do |ssp|
            ssp.subspec 'bigint' do |sssp|
                sssp.source_files = 'src/lib/math/bigint/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/math/bigint/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'numbertheory' do |sssp|
                sssp.source_files = 'src/lib/math/numbertheory/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/math/numbertheory/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'mp' do |sssp|
                sssp.source_files = 'src/lib/math/mp/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/math/mp/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'x509' do |ssp|
            ssp.source_files = 'src/lib/x509/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/x509/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'certstor_sql' do |sssp|
                sssp.source_files = 'src/lib/x509/certstor_sql/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/x509/certstor_sql/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'certstor_system' do |sssp|
                sssp.source_files = 'src/lib/x509/certstor_system/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/x509/certstor_system/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'certstor_flatfile' do |sssp|
                sssp.source_files = 'src/lib/x509/certstor_flatfile/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/x509/certstor_flatfile/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'certstor_sqlite3' do |sssp|
                sssp.source_files = 'src/lib/x509/certstor_sqlite3/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/x509/certstor_sqlite3/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'mac' do |ssp|
            ssp.source_files = 'src/lib/mac/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/mac/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'hmac' do |sssp|
                sssp.source_files = 'src/lib/mac/hmac/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/mac/hmac/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'x919_mac' do |sssp|
                sssp.source_files = 'src/lib/mac/x919_mac/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/mac/x919_mac/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'gmac' do |sssp|
                sssp.source_files = 'src/lib/mac/gmac/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/mac/gmac/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cbc_mac' do |sssp|
                sssp.source_files = 'src/lib/mac/cbc_mac/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/mac/cbc_mac/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cmac' do |sssp|
                sssp.source_files = 'src/lib/mac/cmac/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/mac/cmac/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'poly1305' do |sssp|
                sssp.source_files = 'src/lib/mac/poly1305/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/mac/poly1305/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'siphash' do |sssp|
                sssp.source_files = 'src/lib/mac/siphash/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/mac/siphash/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'passhash' do |ssp|
            ssp.subspec 'bcrypt' do |sssp|
                sssp.source_files = 'src/lib/passhash/bcrypt/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/passhash/bcrypt/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'passhash9' do |sssp|
                sssp.source_files = 'src/lib/passhash/passhash9/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/passhash/passhash9/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'pk_pad' do |ssp|
            ssp.source_files = 'src/lib/pk_pad/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/pk_pad/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'emsa_pssr' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/emsa_pssr/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/emsa_pssr/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'emsa_x931' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/emsa_x931/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/emsa_x931/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'eme_oaep' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/eme_oaep/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/eme_oaep/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'emsa1' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/emsa1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/emsa1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'emsa_raw' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/emsa_raw/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/emsa_raw/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'iso9796' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/iso9796/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/iso9796/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'mgf1' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/mgf1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/mgf1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'emsa_pkcs1' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/emsa_pkcs1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/emsa_pkcs1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'eme_raw' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/eme_raw/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/eme_raw/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'hash_id' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/hash_id/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/hash_id/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'eme_pkcs1' do |sssp|
                sssp.source_files = 'src/lib/pk_pad/eme_pkcs1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/pk_pad/eme_pkcs1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'tls' do |ssp|
            ssp.source_files = 'src/lib/tls/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/tls/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'sessions_sql' do |sssp|
                sssp.source_files = 'src/lib/tls/sessions_sql/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/tls/sessions_sql/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
            ssp.subspec 'asio' do |sssp|
                sssp.source_files = 'src/lib/tls/asio/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/tls/asio/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'tls_cbc' do |sssp|
                sssp.source_files = 'src/lib/tls/tls_cbc/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/tls/tls_cbc/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sessions_sqlite3' do |sssp|
                sssp.source_files = 'src/lib/tls/sessions_sqlite3/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/tls/sessions_sqlite3/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'ffi' do |ssp|
            ssp.source_files = 'src/lib/ffi/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/ffi/*.h'
            ssp.header_mappings_dir = 'src/lib'
        end

        sp.subspec 'compression' do |ssp|
            ssp.source_files = 'src/lib/compression/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/compression/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'zlib' do |sssp|
                sssp.source_files = 'src/lib/compression/zlib/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/compression/zlib/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'psk_db' do |ssp|
            ssp.source_files = 'src/lib/psk_db/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/psk_db/*.h'
            ssp.header_mappings_dir = 'src/lib'
        end

        sp.subspec 'base' do |ssp|
            ssp.source_files = 'src/lib/base/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/base/*.h'
            ssp.header_mappings_dir = 'src/lib'
        end

        sp.subspec 'rng' do |ssp|
            ssp.source_files = 'src/lib/rng/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/rng/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'system_rng' do |sssp|
                sssp.source_files = 'src/lib/rng/system_rng/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/rng/system_rng/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'chacha_rng' do |sssp|
                sssp.source_files = 'src/lib/rng/chacha_rng/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/rng/chacha_rng/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'auto_rng' do |sssp|
                sssp.source_files = 'src/lib/rng/auto_rng/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/rng/auto_rng/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'stateful_rng' do |sssp|
                sssp.source_files = 'src/lib/rng/stateful_rng/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/rng/stateful_rng/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'hmac_drbg' do |sssp|
                sssp.source_files = 'src/lib/rng/hmac_drbg/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/rng/hmac_drbg/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end
        end

        sp.subspec 'block' do |ssp|
            ssp.source_files = 'src/lib/block/*.{h,cpp}'
            ssp.private_header_files = 'src/lib/block/*.h'
            ssp.header_mappings_dir = 'src/lib'

            ssp.subspec 'misty1' do |sssp|
                sssp.source_files = 'src/lib/block/misty1/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/misty1/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cast128' do |sssp|
                sssp.source_files = 'src/lib/block/cast128/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/cast128/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'noekeon' do |sssp|
                sssp.source_files = 'src/lib/block/noekeon/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/noekeon/*.h'
                sssp.header_mappings_dir = 'src/lib'

                sssp.subspec 'noekeon_simd' do |ssssp|
                    ssssp.source_files = 'src/lib/block/noekeon/noekeon_simd/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/block/noekeon/noekeon_simd/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end
            end

            ssp.subspec 'seed' do |sssp|
                sssp.source_files = 'src/lib/block/seed/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/seed/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'gost_28147' do |sssp|
                sssp.source_files = 'src/lib/block/gost_28147/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/gost_28147/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'des' do |sssp|
                sssp.source_files = 'src/lib/block/des/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/des/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cast256' do |sssp|
                sssp.source_files = 'src/lib/block/cast256/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/cast256/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'blowfish' do |sssp|
                sssp.source_files = 'src/lib/block/blowfish/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/blowfish/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'serpent' do |sssp|
                sssp.source_files = 'src/lib/block/serpent/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/serpent/*.h'
                sssp.header_mappings_dir = 'src/lib'

                sssp.subspec 'serpent_simd' do |ssssp|
                    ssssp.source_files = 'src/lib/block/serpent/serpent_simd/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/block/serpent/serpent_simd/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end
            end

            ssp.subspec 'shacal2' do |sssp|
                sssp.source_files = 'src/lib/block/shacal2/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/shacal2/*.h'
                sssp.header_mappings_dir = 'src/lib'

                ssp.subspec 'shacal2_simd' do |sssp|
                    sssp.source_files = 'src/lib/block/shacal2/shacal2_simd/*.{h,cpp}'
                    sssp.private_header_files = 'src/lib/block/shacal2/shacal2_simd/*.h'
                    sssp.header_mappings_dir = 'src/lib'
                end
            end

            ssp.subspec 'xtea' do |sssp|
                sssp.source_files = 'src/lib/block/xtea/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/xtea/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'cascade' do |sssp|
                sssp.source_files = 'src/lib/block/cascade/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/cascade/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'idea' do |sssp|
                sssp.source_files = 'src/lib/block/idea/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/idea/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'aria' do |sssp|
                sssp.source_files = 'src/lib/block/aria/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/aria/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'sm4' do |sssp|
                sssp.source_files = 'src/lib/block/sm4/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/sm4/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'camellia' do |sssp|
                sssp.source_files = 'src/lib/block/camellia/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/camellia/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'twofish' do |sssp|
                sssp.source_files = 'src/lib/block/twofish/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/twofish/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'threefish_512' do |sssp|
                sssp.source_files = 'src/lib/block/threefish_512/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/threefish_512/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'kasumi' do |sssp|
                sssp.source_files = 'src/lib/block/kasumi/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/kasumi/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'lion' do |sssp|
                sssp.source_files = 'src/lib/block/lion/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/lion/*.h'
                sssp.header_mappings_dir = 'src/lib'
            end

            ssp.subspec 'aes' do |sssp|
                sssp.source_files = 'src/lib/block/aes/*.{h,cpp}'
                sssp.private_header_files = 'src/lib/block/aes/*.h'
                sssp.header_mappings_dir = 'src/lib'

                sssp.subspec 'aes_vperm' do |ssssp|
                    ssssp.source_files = 'src/lib/block/aes/aes_vperm/*.{h,cpp}'
                    ssssp.private_header_files = 'src/lib/block/aes/aes_vperm/*.h'
                    ssssp.header_mappings_dir = 'src/lib'
                end
            end
        end
    end
end
