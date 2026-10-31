# 远程内容目录

所有会被模组远程拉取的内容都收在这里，避免散落在仓库根目录。
每个目录有一个 `index.json` 列出文件名；模组先读索引，再按索引里的相对路径拉取。

## 目录结构

```
remote/
  version/
    index.json                版本索引
    1.9.0.json                一个版本一个 JSON
    2.0.0.json
  announcement/
    index.json                公告索引
    <announcement>.json       一条公告一个 JSON
  mail/
    index.json                邮件索引
    <mail>.json               一封邮件一个 JSON（正文 + 奖励）
  community.txt               社群服务（纯文本）
```

## 索引格式

`version/index.json`、`announcement/index.json`、`mail/index.json` 都是同一套结构：

```jsonc
{
  "version": 1,
  "files": [
    "1.9.0.json",
    "2.0.0.json"
  ]
}
```

- `files` 里的文件名相对于索引所在目录；
- 也兼容 `mails` 键（与 `files` 合并）；
- 索引里的文件建议只写 `.json`；`README.md` 不要写进去；
- 新增/删除内容时同步改索引。

## 版本更新公告

`version/<version>.json`，建议文件名直接使用版本号，方便模组在下载前就跳过旧版本：

```jsonc
{
  "version": "2.0.0",
  "date": "2026-10-31",
  "title": "2.0.0 更新公告",
  "body": [
    "&6&lGTQT 2.0.0",
    "&7- 更新内容。"
  ]
}
```

- 模组会先比较文件名里的版本号，只下载不低于本地版本的文件；
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

- 更新公告、公告、社群服务在**加载阶段**由后台线程预取；进入游戏后只读内存，
  除非执行 `/quantumhue refresh`，否则不会主动联网。
- 邮件同样在加载阶段预取到内存；世界加载时使用，运行期不自动拉取。
- 所有远程内容都不写本地缓存文件，进程重启后重新拉取。
- `rewards[].item` 使用物品注册名；`meta` 可省略；`count` 会被限制在合理范围内。
- `startsAt` / `expiresAt` 使用 **epoch 毫秒**（不是秒）。
