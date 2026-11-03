#!/usr/bin/env python3
"""把 APK 中的 resources.arsc 改为 STORED（不压缩），以符合 Android 11+ 对 targetSdk 30 的要求。"""
import shutil
import sys
import zipfile

src, dst = sys.argv[1], sys.argv[2]

with zipfile.ZipFile(src) as zin:
    with zipfile.ZipFile(dst, "w") as zout:
        for item in zin.infolist():
            data = zin.read(item.filename)
            comp = (zipfile.ZIP_STORED if item.filename == "resources.arsc"
                    else item.compress_type)
            zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
            zi.external_attr = item.external_attr
            zi.compress_type = comp
            zout.writestr(zi, data)

shutil.move(dst, src)
