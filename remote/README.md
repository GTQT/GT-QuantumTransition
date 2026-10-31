# 远程内容目录

所有会被模组远程拉取的内容都收在这里，避免散落在仓库根目录。

## 目录结构

```
remote/
  version/
    latest.txt                远程最新版本号（只写版本号本身）
    <version>.txt             对应版本的更新日志（纯文本）
  announcement/
    index.json                公告索引：列出本目录下所有公告文件
    <announcement>.json       一条公告对应一个 JSON
  mail/
    index.json                邮件索引：列出本目录下所有邮件文件
    <mail>.json               一封邮件对应一个 JSON（正文 + 奖励）
```

对应 GitHub Raw 地址（`main` 分支）：

| 内容 | 地址 |
| --- | --- |
| 最新版本 | `https://raw.githubusercontent.com/GTQT/GT-QuantumTransition/main/remote/version/latest.txt` |
| 更新日志 | `https://raw.githubusercontent.com/GTQT/GT-QuantumTransition/main/remote/version/<version>.txt` |
| 公告索引 | `https://raw.githubusercontent.com/GTQT/GT-QuantumTransition/main/remote/announcement/index.json` |
| 公告文件 | `https://raw.githubusercontent.com/GTQT/GT-QuantumTransition/main/remote/announcement/<file>.json` |
| 邮件索引 | `https://raw.githubusercontent.com/GTQT/GT-QuantumTransition/main/remote/mail/index.json` |
| 邮件文件 | `https://raw.githubusercontent.com/GTQT/GT-QuantumTransition/main/remote/mail/<file>.json` |

## 文本格式（版本号 / 更新日志）

- 编码：UTF-8，无 BOM。
- 支持 `&` 颜色码（运行时转成 `§`）。
- 以 `#` 开头的行视为注释，不显示。
- 更新日志一行一条。

## 索引格式

`announcement/index.json` 与 `mail/index.json` 结构相同：

```jsonc
{
  "version": 1,
  "files": [
    "2025-refactor.json",
    "2026-mail-system.json"
  ]
}
```

- `files` 只放本目录下的文件名，不支持子目录、绝对路径或 `..`；
- 新增内容：先加 JSON 文件，再把文件名加进 `files`；
- 删除内容：从 `files` 移除即可（已领取的邮件记录不受影响）；
- 顺序不重要；公告会按 `pinned` + `date` 排序，邮件按索引顺序展示。

## 公告文件

`announcement/<name>.json`：

```jsonc
{
  "id": "2025-refactor",                 // 稳定 id
  "title": "关于项目重构的公告",
  "date": "2025-10-01",                  // 展示用；同时用于排序
  "author": "GTQT 运营组",                // 可选
  "pinned": true,                        // 可选，置顶排在最前
  "body": [                              // 正文，一行一条，支持 & 颜色码
    "&6标题行",
    "&7正文第一行"
  ]
}
```

## 邮件文件

`mail/<name>.json`：

```jsonc
{
  "id": "gtqt-1.9.0-refactor",   // 稳定 id；领取记录按它记，改 id 等于发新邮件
  "title": "1.9.0 重构纪念礼包",
  "sender": "GTQT 运营组",
  "date": "2026-10-31",          // 展示用日期
  "startsAt": 0,                 // 开始生效时间（epoch 毫秒），0 = 立即
  "expiresAt": 0,                // 过期时间（epoch 毫秒），0 = 永不过期
  "money": 0,                    // 可选，FTB Money 货币
  "body": [                      // 正文，一行一条，支持 & 颜色码
    "&6&l标题行",
    "&7正文第一行"
  ],
  "rewards": [                   // 奖励物品，最多 36 条
    { "item": "minecraft:diamond", "meta": 0, "count": 8 }
  ]
}
```

### 规则

- **邮件与公告内容只来自远程**：本地 `config/quantumhue/*.json` 只有远程地址与刷新参数，不保存任何公告/邮件。
- 公告由客户端拉取用于展示；邮件由**服务端**拉取、校验并通过数据包发给客户端。
- 客户端领取邮件时只发送 `mailId`，奖励由服务端根据远程邮件内容发放。
- 每名玩家每封邮件只能领取一次，领取记录写在对应存档的 `quantumhue_mail_data` 里。
- `startsAt` / `expiresAt` 使用 **epoch 毫秒**（不是秒）。
- `rewards[].item` 使用物品注册名；`meta` 可省略；`count` 会被限制在合理范围内。
- 奖励会直接进入背包，背包满时掉落在地上。
- 修改远程文件后，服务器下一次刷新（默认 10 分钟）或执行 `/quantumhue refresh` 后生效。
