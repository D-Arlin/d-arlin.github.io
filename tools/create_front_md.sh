#!/bin/bash

# -------- 配置部分 --------
# Markdown 文件名（不带扩展名）

# 标题
TITLE="TITLE"
# 获取当前日期时间，格式为 YYYY-MM-DD HH:MM:SS +/-TTTT
DATE=$(TZ='Asia/Shanghai' date +"%Y-%m-%d %H:%M:%S %z")
# 分类列表（逗号分隔）
CATEGORIES="TOP_CATEGORY, SUB_CATEGORY"
# 标签
TAG="TAG"
# 定义模板名称
FILENAME=$(date +"%Y-%m-%d")-${TITLE}
# -------- 自动生成 Markdown 内容 --------
cat <<EOF >"${FILENAME}.md"
---
title: ${TITLE}
date: ${DATE}
categories: [${CATEGORIES}]
tags: [${TAG}]
---
EOF

# 提示生成完成
echo "Markdown 文件 ${FILENAME}.md 已生成，内容如下："
cat "${FILENAME}.md"
