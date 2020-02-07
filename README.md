# SwiftMatch

An attempt at recreating Rust's match in Swift, currently crashes the compiler

```
'SwiftMatch' /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch: warning: Ignoring duplicate product 'SwiftMatch' 
expression has no type
(declref_expr type='<null>' decl=SwiftMatch.(file).match(_:cases:)@/media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/Sources/SwiftMatch/SwiftMatch.swift:19:6 function_ref=double)Stack dump:
0.      Program arguments: /home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift -frontend -c /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/Sources/SwiftMatch/SwiftMatch.swift -primary-file /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/Sources/SwiftMatch/main.swift -emit-module-path /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug/SwiftMatch.build/main~partial.swiftmodule -emit-module-doc-path /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug/SwiftMatch.build/main~partial.swiftdoc -emit-dependencies-path /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug/SwiftMatch.build/main.d -emit-reference-dependencies-path /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug/SwiftMatch.build/main.swiftdeps -target x86_64-unknown-linux -disable-objc-interop -sdk / -I /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug -enable-testing -g -module-cache-path /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug/ModuleCache -swift-version 5 -Onone -D SWIFT_PACKAGE -D DEBUG -color-diagnostics -enable-anonymous-context-mangled-names -module-name SwiftMatch -o /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug/SwiftMatch.build/main.swift.o -index-store-path /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/.build/x86_64-unknown-linux/debug/index/store -index-system-modules 
1.      While walking into decl declaration 0x720bf48 (at /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/Sources/SwiftMatch/main.swift:4:1)
2.      While walking into initializer for declaration 0x720c5f0 (at /media/gudmundur/Local Disk/Projects/Swift/SwiftMatch/Sources/SwiftMatch/main.swift:4:1)
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x451a3b4]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x451800e]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x451a7c8]
/lib/x86_64-linux-gnu/libpthread.so.0(+0x15540)[0x7f99aefd4540]
/lib/x86_64-linux-gnu/libc.so.6(gsignal+0xcb)[0x7f99aea153eb]
/lib/x86_64-linux-gnu/libc.so.6(abort+0x12b)[0x7f99ae9f4899]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x1343f19]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x1355ec7]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x13581e2]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x1353a3c]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x1356218]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x1357f72]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x1353a3c]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x1353963]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x141137e]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x133e4e3]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0xfd65ca]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x74879a]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x74770a]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x746d71]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x4d2144]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x4d0cde]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x473b16]
/lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xf3)[0x7f99ae9f61e3]
/home/gudmundur/.swiftenv/versions/5.1.1-RELEASE/usr/bin/swift[0x47377a]
```