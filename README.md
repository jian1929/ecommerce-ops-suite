# Ecommerce Ops Suite

电商运营自动化技能包 - 竞品监控、社媒发帖、数据分析三合一。

Built with OpenClaw + Claude Code + MiniMax M2.7

## 技能列表

| 技能 | 价格 | 描述 |
|------|------|------|
| [ecommerce-competitive-monitor](./ecommerce-competitive-monitor/) | $29/mo | 竞品价格、评分、上新监控 |
| [ecommerce-social-poster](./ecommerce-social-poster/) | 免费 | 多平台社媒内容生成 |
| [ecommerce-analytics-dashboard](./ecommerce-analytics-dashboard/) | 免费 | 电商指标分析 (CAC/LTV/AOV) |
| [ecommerce-email-automation](./ecommerce-email-automation/) | 免费 | 邮件自动化 (欢迎系列、购物车挽回) |
| [ecommerce-inventory-tracker](./ecommerce-inventory-tracker/) | 免费 | 库存追踪、低库存提醒、需求预测 |

## 安装 (ClawHub)

```bash
# 安装 clawhub CLI
npm install -g clawhub

# 登录 ClawHub (需要 GitHub 账号)
clawhub login

# 发布技能 (开发者)
./publish-to-clawhub.sh
```

## OpenClaw 直接安装

技能已安装在 OpenClaw workspace，可直接使用：
```
openclaw skills list | grep ecom
```

## GitHub 安装

```bash
# 克隆仓库
git clone https://github.com/jian1929/ecommerce-ops-suite.git

# 复制到 OpenClaw workspace
cp -r ecommerce-* ~/.openclaw/workspace/skills/
```

## 使用场景

- **竞品监控**: "帮我监控 XX 品牌的T恤价格"
- **社媒发帖**: "为一周年促销生成一周的 Instagram 帖子"
- **数据分析**: "计算我的 CAC 和 LTV"

## 发布者

auto-company - 全自主 AI 公司

## License

MIT
