const String fakeJsonData = """
[
  {
    "id": 1,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-28T23:52:49+09:00",
    "OFF_time": "2024-03-29T01:21:55+09:00"
  },
  {
  "id": 2,
  "state": 1,
  "device_type": "WASH",
  "ON_time": "2024-03-27T22:54:08+09:00",
  "OFF_time": "2024-03-27T23:43:58+09:00"
  },
  {
    "id": 3,
    "state": 0,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:46:30+09:00",
    "OFF_time": "2024-03-29T10:36:01+09:00"
  },
  {
    "id": 4,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:34:30+09:00",
    "OFF_time": "2024-03-28T21:22:23+09:00"
  },
  {
    "id": 5,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:56:50+09:00",
    "OFF_time": "2024-03-28T21:45:04+09:00"
  },
  {
    "id": 6,
    "state": 2,
    "device_type": "WASH",
    "ON_time": "",
    "OFF_time": ""
  },
  {
    "id": 7,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T21:56:13+09:00",
    "OFF_time": "2024-03-28T22:43:39+09:00"
  },
  {
    "id": 8,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-27T21:33:01+09:00",
    "OFF_time": "2024-03-27T22:19:45+09:00"
  },
  {
    "id": 9,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-28T23:37:32+09:00",
    "OFF_time": "2024-03-29T01:25:40+09:00"
  },
  {
    "id": 10,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T21:11:51+09:00",
    "OFF_time": "2024-03-28T21:56:44+09:00"
  },
  {
    "id": 11,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:56:16+09:00",
    "OFF_time": "2024-03-28T21:47:07+09:00"
  },
  {
    "id": 12,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T21:00:11+09:00",
    "OFF_time": "2024-03-28T22:03:52+09:00"
  },
  {
    "id": 13,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:38:11+09:00",
    "OFF_time": "2024-03-28T21:25:01+09:00"
  },
  {
    "id": 14,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:38:12+09:00",
    "OFF_time": "2024-03-28T21:24:59+09:00"
  },
  {
    "id": 15,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-28T21:23:46+09:00",
    "OFF_time": "2024-03-29T00:11:13+09:00"
  },
  {
    "id": 16,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-28T22:43:40+09:00",
    "OFF_time": "2024-03-29T02:25:20+09:00"
  },
  {
    "id": 17,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-29T03:15:31+09:00",
    "OFF_time": "2024-03-29T04:00:29+09:00"
  },
  {
    "id": 18,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T21:13:35+09:00",
    "OFF_time": "2024-03-28T22:13:00+09:00"
  },
  {
    "id": 19,
    "state": 2,
    "device_type": "WASH",
    "ON_time": "",
    "OFF_time": ""
  },
  {
    "id": 20,
    "state": 2,
    "device_type": "WASH",
    "ON_time": "",
    "OFF_time": ""
  },
  {
    "id": 21,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:33:44+09:00",
    "OFF_time": "2024-03-28T21:47:46+09:00"
  },
  {
    "id": 22,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T21:20:06+09:00",
    "OFF_time": "2024-03-28T22:07:47+09:00"
  },
  {
    "id": 23,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-29T00:13:15+09:00",
    "OFF_time": "2024-03-29T01:50:15+09:00"
  },
  {
    "id": 24,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-28T23:00:03+09:00",
    "OFF_time": "2024-03-29T00:46:23+09:00"
  },
  {
    "id": 25,
    "state": 2,
    "device_type": "DRY",
    "ON_time": "2024-03-28T20:32:40+09:00",
    "OFF_time": "2024-03-29T00:22:56+09:00"
  },
  {
    "id": 26,
    "state": 2,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:58:11+09:00",
    "OFF_time": "2024-03-28T21:52:19+09:00"
  },
  {
    "id": 27,
    "state": 2,
    "device_type": "WASH",
    "ON_time": "",
    "OFF_time": ""
  },
  {
    "id": 28,
    "state": 2,
    "device_type": "WASH",
    "ON_time": "2024-03-13T12:20:23+09:00",
    "OFF_time": "2024-03-13T12:21:17+09:00"
  },
  {
    "id": 29,
    "state": 2,
    "device_type": "WASH",
    "ON_time": "2024-03-13T12:20:48+09:00",
    "OFF_time": "2024-03-13T12:21:23+09:00"
  },
  {
    "id": 30,
    "state": 1,
    "device_type": "WASH",
    "ON_time": "2024-03-28T20:56:37+09:00",
    "OFF_time": "2024-03-28T22:00:30+09:00"
  },
  {
    "id": 31,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-28T23:49:35+09:00",
    "OFF_time": "2024-03-29T02:37:35+09:00"
  },
  {
    "id": 32,
    "state": 1,
    "device_type": "DRY",
    "ON_time": "2024-03-28T23:49:35+09:00",
    "OFF_time": "2024-03-29T02:37:35+09:00"
  }
]
""";
