# 分镜模板

## 每镜头必填字段

```json
{
  "sceneId": "S01",
  "start": 0.0,
  "end": 4.8,
  "spokenText": "这一段实际口播",
  "viewerJob": "让观众理解这一段的核心结论",
  "visualType": "a-roll|b-roll|overlay|pip|cta",
  "visualMechanism": "用什么结构把结论讲清楚",
  "entry": {"type": "fade-slide", "durationFrames": 10},
  "motion": "右侧面板轻微推近，卡片错峰出现",
  "cueWords": [{"text": "关键词", "time": 2.1, "action": "放大并变粉"}],
  "settledMoment": 3.2,
  "exit": {"type": "push-left", "durationFrames": 8},
  "transitionToNext": {"type": "same-direction-slide", "durationFrames": 10},
  "composition": {
    "headline": "大标题",
    "safeZones": ["face", "captions"],
    "speakerPip": "none|lower-left|lower-right",
    "progressSection": "章节 1"
  },
  "audio": {
    "sfx": [{"name": "mouse-click", "at": 2.1}],
    "bgm": "duck-under-voice"
  },
  "assetPlan": [
    {"role": "title", "tool": "remotion", "alpha": true, "independent": true},
    {"role": "ui-card", "tool": "hyperframes", "alpha": true, "independent": true}
  ]
}
```

## 分镜检查

- `start`/`end` 来自实际口播或实际画面时间，不用平均分配。
- 每个镜头只有一个主要 viewer job，但可以包含多个独立视觉资产。
- `settledMoment` 必须落在镜头内部；信息不能在 cue 前提前出现，也不能入场后立刻冻结。
- `safeZones` 至少包含人物脸和已有字幕所在区域。
- 每个镜头都要有 `entry`、`motion`、`exit` 和 `transitionToNext`。
- 相邻镜头的转场方向、运动速度和视觉形状要能解释得通。
- 音效锚点只对准真正的动作或主要切换，不为每个微小元素重复添加。
