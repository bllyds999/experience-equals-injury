# Experience Equals Injury / 经验即伤害

> **The more experience you have, the stronger you become.**
> **经验越多，实力越强。**

A Minecraft datapack that scales your **attack damage**, **max health**, and grants **status effects** based on your experience level. Licensed under MIT — free to use, modify, and share.

一个根据经验等级提升**攻击伤害**、**最大生命值**并给予**状态效果**的 Minecraft 数据包。基于 MIT 协议开源，可自由使用、修改和分享。

---

## Requirements / 需求

- **Minecraft Java Edition 1.21+** (pack format 101)

---

## How It Works / 玩法介绍

Every game tick, the datapack reads your current experience level and applies the corresponding stats. The higher your level, the more powerful you become!

每个游戏刻，数据包都会读取你当前的经验等级，并应用对应的属性。等级越高，实力越强！

### Attack Damage / 攻击伤害

Your base attack damage equals your experience level, up to **999**.

攻击伤害基础值 = 经验等级，最高 **999** 级。

| Experience Level | Attack Damage |
|:---:|:---:|
| 1 | 1 |
| 10 | 10 |
| 100 | 100 |
| 500 | 500 |
| 999 | 999 |

### Max Health / 最大生命值

Your max health equals your experience level, up to **999** (1 level = 1 health point = 0.5 heart).

最大生命值 = 经验等级，最高 **999**（1 级 = 1 生命值 = 0.5 颗心）。

| Experience Level | Max Health | Hearts |
|:---:|:---:|:---:|
| 1 | 1 | 0.5 |
| 10 | 10 | 5 |
| 100 | 100 | 50 |
| 500 | 500 | 250 |
| 999 | 999 | 499.5 |

### Status Effects / 状态效果

As you level up, you gain permanent status effects (all at amplifier level 9, i.e. level X):

随着等级提升，你将获得永久状态效果（全部为 9 级）：

| Experience ≥ | Effect | 效果 |
|:---:|:---|:---:|
| 9 | Saturation | 饱和 |
| 18 | Speed | 速度 |
| 27 | Jump Boost | 跳跃提升 |
| 36 | Haste | 急迫 |
| 45 | Strength | 力量 |
| 54 | Regeneration | 生命恢复 |
| 63 | Resistance | 抗性提升 |
| 72 | Night Vision | 夜视 |

### Item to Experience / 物品转经验

When you hold a piece of paper in your inventory, nearby dropped items (within 10 blocks) will be converted into experience orbs.

当你的物品栏中有纸时，附近 10 格内的掉落物会被转化为经验球。

---

## Installation / 安装方法

1. Download the datapack
2. Place it in your world's `datapacks` folder: `.minecraft/saves/<your_world>/datapacks/` .
3. Run `/reload` in game, or re-enter the world.
4. The datapack activates automatically

---

1. 下载数据包
2. 放入存档的 `datapacks` 文件夹：`.minecraft/saves/<你的存档>/datapacks/` 。
3. 在游戏中执行 `/reload`，或重新进入存档。
4. 数据包自动生效

---

## Files Structure / 文件结构

```
data/
└── experience_equals_injury/
    └── function/
        ├── load.mcfunction      # Initialize scoreboard / 初始化计分板
        ├── tick.mcfunction      # Main loop (runs every tick) / 主循环（每 tick 执行）
        ├── damage.mcfunction    # Set attack damage / 设置攻击伤害
        ├── health.mcfunction    # Set max health / 设置最大生命值
        ├── effect.mcfunction    # Grant status effects / 给予状态效果
        └── item.mcfunction      # Convert items to experience orbs / 将物品转化为经验球
data/
└── minecraft/
    └── tags/
        └── function/
            ├── load.json        # Load tag
            └── tick.json        # Tick tag
```

---

## License / 许可证

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

本项目基于 **MIT 许可证** 开源。详见 [LICENSE](LICENSE) 文件。

---

## Author / 作者

Created by Liangdongye. Feel free to contribute or submit issues!

由梁栋烨制作。欢迎贡献代码或提交 Issue！