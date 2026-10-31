# 远程内容目录

所有会被模组远程拉取的内容都收在这里，避免散落在仓库根目录。
**不再有 index.json**：目录里的文件本身就是全部内容，模组通过 GitHub Contents API 列出目录。

## 目录结构

```
remote/
  version/
    1.8.0.json                一个版本一个 JSON
    1.9.0.json
  announcement/
    <announcement>.json       一条公告一个 JSON
  mail/
    <mail>.json               一封邮件一个 JSON（正文 + 奖励）
  community.txt               社群服务（纯文本）
```

## 目录 API

模组使用 GitHub Contents API 列举目录，再按文件里的 `download_url` 拉取原始内容：

| 内容 | 目录 API |
| --- | --- |
| 版本更新公告 | `https://api.github.com/repos/GTQT/GT-QuantumTransition/contents/remote/version?ref=main` |
| 公告 | `https://api.github.com/repos/GTQT/GT-QuantumTransition/contents/remote/announcement?ref=main` |
| 邮件 | `https://api.github.com/repos/GTQT/GT-QuantumTransition/contents/remote/mail?ref=main` |

- 未认证的 GitHub API 有频率限制；模组只在启动预取和手动 `/quantumhue refresh` 时调用；
- 目录内的 `README.md` 等非 `.json` 文件会被忽略；
- 新增/删除内容只需增删文件，不需要改索引。

## 版本更新公告

`version/<version>.json`，建议文件名直接使用版本号，方便模组在下载前就跳过旧版本：

```jsonc
{
  "version": "1.9.0",
  "date": "2026-10-31",
  "title": "1.9.0 重构完成更新公告",
  "body": [
    "&6&lGTQT 1.9.0",
    "&7- 重构完成。",
    "&8----------------------------------------",
    "&7- 具体更新内容。"
  ]
}
```

- 模组会先比较文件名里的版本号，只下载比本地新的文件；
- 文件名不是版本号时才会下载，并以 JSON 里的 `version` 字段为准；
- 版本号按点分数字比较，忽略 `-pre` 等后缀；
- 比本地旧的版本不会被展示。

## 公告文件

`announcement/<name>.json`：

```jsonc
{
  "id": "2025-refactor",
  "title": "关于项目重构的公告",
  "date": "2025-10-01",
  "author": "GTQT 运营组",
  "pinned": true,
  "body": ["&6标题行", "&7正文第一行"]
}
```

公告页按 `pinned` + `date` 排序。

## 邮件文件

`mail/<name>.json`：

```jsonc
{
  "id": "gtqt-1.9.0-refactor",   // 稳定 id；领取记录按它记，改 id 等于发新邮件
  "title": "1.9.0 重构纪念礼包",
  "sender": "GTQT 运营组",
  "date": "2026-10-31",
  "startsAt": 0,                 // 开始生效时间（epoch 毫秒），0 = 立即
  "expiresAt": 0,                // 过期时间（epoch 毫秒），0 = 永不过期
  "money": 0,                    // 可选，FTB Money 货币
  "body": ["&6&l标题行", "&7正文第一行"],
  "rewards": [
    { "item": "minecraft:diamond", "meta": 0, "count": 8 }
  ]
}
```

邮件由服务端在加载阶段预取到内存，世界加载时直接使用；运行期不自动拉取，领取记录写入存档。

## 社群服务

`community.txt` 是纯文本，按行显示，支持 `&` 颜色码与 `#` 注释。

## 规则

- 更新公告、公告、社群服务在**加载阶段**由后台线程预取，最多尝试 3 次；进入游戏后只读内存，
  除非执行 `/quantumhue refresh`，否则不会主动联网。
- 邮件同样在加载阶段预取到内存；世界加载时使用，运行期不自动拉取。
- 所有远程内容都不写本地缓存文件，进程重启后重新拉取。
- `rewards[].item` 使用物品注册名；`meta` 可省略；`count` 会被限制在合理范围内。
- `startsAt` / `expiresAt` 使用 **epoch 毫秒**（不是秒）。
