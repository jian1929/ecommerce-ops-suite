---
name: ecommerce-ops-suite
description: 电商运营套装 - 竞品监控、库存预警、价格追踪。24小时自动化运营，省时省力。
version: 1.0.0
author: auto-company
tags:
  - ecommerce
  - automation
  - competitor-analysis
  - inventory
  - pricing
triggers:
  - 电商运营
  - 竞品监控
  - 库存预警
  - 价格追踪
  - 电商自动化
---

# Ecommerce Ops Suite

电商运营自动化技能包，包含三大核心能力：

## 功能模块

### 1. 竞品监控 (Competitor Monitor)
自动追踪竞品价格、评分、上新动态。

### 2. 库存预警 (Inventory Alert)
监控库存水位，低于阈值自动告警。

### 3. 价格追踪 (Price Tracker)
追踪商品价格历史，降价时自动提醒。

## 使用场景

当用户提到以下需求时激活：
- "监控竞品价格"
- "库存低于X件时提醒我"
- "追踪XX商品价格"
- "竞品上新了吗"
- "我的库存还剩多少"

## 核心指令

### 竞品监控
```
监控 [竞品名称] 的 [商品类别]
- 价格变动超过 [X]% 时告警
- 新上架商品时通知
- 评分变化时记录
```

### 库存预警
```
设置 [商品SKU] 库存预警
- 低于 [数量] 件时发送提醒
- 每周库存报告
```

### 价格追踪
```
追踪 [商品链接/名称] 价格
- 降价超过 [X]% 时通知
- 生成价格历史图表
```

## 约束

- 仅监控公开可见信息
- 不采集个人隐私数据
- 遵守各平台robots.txt规则
