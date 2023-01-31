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

## Services

TBD

## Action

TBD