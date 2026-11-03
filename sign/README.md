# sign/

自签名 keystore 存放目录。

- `build.sh` 在首次构建时会自动调用 `keytool` 生成 `release.keystore`（别名 `siderbar`、有效期 10000 天），无需手动创建。
- `release.keystore` 已在仓库根目录的 `.gitignore` 中被忽略，**不会进入版本库**。请自行妥善保管。
- 如需使用自有发布密钥，把你的 keystore 放到此处（或修改 `build.sh` 中的 `KS` 路径与别名/密码）即可。
