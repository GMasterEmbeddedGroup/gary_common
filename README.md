# gary_common

gary_common是gary_ros2的通用部分, 包含共用数据结构的定义 (topic, service, action等) 以及通用节点 (自检消息聚合器) 等, 所有节点间通信应当尽可能使用本包定义的内容或ros内置消息类型.

## DiagnosticAggregator

自检消息聚合器, 负责将多个节点发送的自检信息聚合到一个话题上, 并标记过期的自检信息

### Usage

直接启动节点
```bash
ros2 run gary_common diagnostic_aggregator
```

作为component加载
```bash
ros2 run rclcpp_components component_container
ros2 component load /ComponentManager gary_common gary_common::DiagnosticAggregator
```

注意, `DiagnosticAggregator`是生命周期节点, 当节点启动后, 需要配置才能进入运行状态
```bash
ros2 lifecycle set /diagnostic_aggregator configure
ros2 lifecycle set /diagnostic_aggregator activate
```

`DiagnosticAggregator`可配置参数如下

* diagnose_topic: 接收其他节点发送的自检数据主题名称, 默认/diagnostics
* agg_topic: 发送的聚合后主题名称, 默认/diagnostics_agg
* update_freq: 发送频率, 默认10Hz
* stale_threshold: 过期阈值, 默认0.5S


## Topics

* msg/DR16Receiver.msg: DR16接收机消息类型
* msg/GameStatus.msg: 比赛状态数据, 3Hz周期发送
* msg/GameResult.msg: 比赛结果数据, 比赛结束后发送
* msg/RobotHP.msg: 比赛机器人血量数据, 3Hz周期发送
* msg/ICRABuffDebuffZoneAndLurkStatus.msg: 人工智能挑战赛加成与惩罚状态, 1Hz周期发送
* msg/FieldEvents.msg: 场地事件数据, 3Hz周期发送
* msg/SupplyProjectileAction.msg: 场地补给站动作标识数据, 动作改变后发送
* msg/SupplyProjectileRequest.msg: 请求补给站补弹数据, 由参赛队发送, 上限10Hz, 对抗赛尚未开放
* msg/RefereeWarning.msg: 裁判警告数据, 警告发生后发送
* msg/DartRemainingTime.msg: 飞镖发射口倒计时, 3Hz周期发送
* msg/RobotStatus.msg: 机器人状态数据, 10Hz周期发送
* msg/PowerHeat.msg: 实时功率热量数据, 50Hz周期发送
* msg/RobotPosition.msg: 机器人位置数据, 10Hz周期发送
* msg/RobotBuff.msg: 机器人增益数据, 1Hz周期发送
* msg/AerialRobotEnergy.msg: 空中机器人能量状态数据, 10Hz周期发送, 只有空中机器人主控发送
* msg/RobotHurt.msg: 伤害状态数据, 伤害发生后发送
* msg/ShootData.msg 实时射击数据, 子弹发射后发送
* msg/BulletRemaining.msg: 子弹剩余发送数, 空中机器人以及哨兵机器人发送, 10Hz周期发送
* msg/RFIDStatus.msg: 机器人RFID状态, 3Hz周期发送
* msg/DartClientCmd.msg: 飞镖机器人客户端指令, 10Hz周期发送
* msg/InteractiveData.msg: 机器人间交互数据, 发送方触发发送, 上限10Hz
* msg/CustomController.msg: 自定义控制器交互数据接口, 通过客户端触发发送, 上限30Hz
* msg/ClientCommand.msg: 客户端小地图交互数据, 触发发送
* msg/ClientReceive.msg: 客户端小地图接收信息
* msg/ImageTransmitter.msg: 键盘, 鼠标信息, 通过图传串口发送
* msg/AutoAIM.msg: 视觉自瞄指令

## Services

TBD

## Action

TBD