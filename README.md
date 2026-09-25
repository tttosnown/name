# 重庆大学建筑学刷题 APK

## 后续自己加题
以后主要修改：
`www/index.html`

题目统一放在 `paperData.mixed` 数组里，不需要按年份分类。

支持现有三种题型：
- fill：填空题
- single：单选题
- judge：判断题

加入新题后直接提交/上传到 GitHub 的 `main` 分支，Actions 会自动重新打 APK。

## GitHub Actions
工作流：
`.github/workflows/build-apk.yml`

构建完成后，在 Actions 对应运行页面的 Artifacts 下载 APK。
