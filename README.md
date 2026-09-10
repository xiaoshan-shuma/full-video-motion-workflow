
# full-video-motion-workflow

一个面向中文真人口播视频的完整 AI 剪辑工作流 Skill。它把整条视频作为视觉段落来规划，先分析素材和口播，再用 HyperFrames/Remotion 制作独立动效，最后在 ChatCut 中完成组装、音频处理、逐镜头检查和交付。

## 适用场景

- 口播、教程、AI 工具介绍和产品讲解视频
- 需要完整分镜、动效、B-roll、转场、音效和 BGM 的成片
- 希望保留已有字幕、人物主体和可编辑时间线的 ChatCut 项目

## 默认风格

- 16:9 横屏深海军蓝科技讲解风
- 左侧偏上的中文大标题，右侧 UI、流程、数据或卡片视觉
- 青蓝表达结构和路径，粉色突出关键词，黄色少量强调
- 人物不挡脸，必要时平滑缩为圆形画中画
- 顶部只保留一条不透明的全局进度条
- 动效和转场独立输出，透明素材必须是真实 Alpha

## 使用方法

把这个目录放到 Codex 的 Skill 目录中，例如：

```text
~/.codex/skills/full-video-motion-workflow/
```

然后直接提出类似请求：

```text
请使用 full-video-motion-workflow，读取我提供的素材，完成整条视频的分镜、动效、转场、音效和 ChatCut 组装。保留已有字幕，除非我明确要求，否则不要导出。
```

Skill 会按以下顺序工作：

1. 盘点素材、项目、字幕和音频。
2. 完整理解口播并建立整条视频的分镜。
3. 为每个视觉段落选择一个主要视觉隐喻。
4. 用 HyperFrames 制作 UI 交互和页面类动效，用 Remotion 制作标题、计数器、人物变形、进度条和自定义转场。
5. 将标题、Logo、卡片、数字和转场保持为可独立调整的素材。
6. 导入 ChatCut，保留已有字幕和人物安全区。
7. 最后加入克制的音效、BGM 和人声处理，并逐镜头验收。

## 文件说明

- `SKILL.md`：Skill 入口和完整执行规则
- `references/xiaoshan-style.md`：小珊深蓝科技讲解风、参考视频拆解和视觉验收规则
- `references/chatcut-runbook.md`：ChatCut 导入、轨道和组装清单
- `references/scene-plan-template.md`：分镜 JSON 模板和检查项

## 隐私说明

本仓库只包含工作流说明和模板，不包含任何私人视频、截图、ChatCut 项目数据、账号信息或生成素材。

## License

MIT License，详见 [LICENSE](LICENSE)。
