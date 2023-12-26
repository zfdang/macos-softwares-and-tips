Karabiner-Elements是非常强大的控制键盘的一款软件。

目前使用的Karabiner的操作如下：

# 将Caps Lock更改为Hyper Key

这样就可以结合HammerSpoon进行很多操作了。这个规则是Karabiner自带的规则，直接enable就可以了。

```
{
    "manipulators": [
        {
            "description": "Change caps_lock to command+control+option+shift.",
            "from": {
                "key_code": "caps_lock",
                "modifiers": {
                    "optional": [
                        "any"
                    ]
                }
            },
            "to": [
                {
                    "key_code": "left_shift",
                    "modifiers": [
                        "left_command",
                        "left_control",
                        "left_option"
                    ]
                }
            ],
            "type": "basic"
        }
    ]
}
```

# 将Right Shift更改为切换输入法到英文

输入法状态不明确，导致很多时候输入混乱。这个一键将输入法切换到英文，状态明确。这个需要自己增加一条规则

```
{
    "description": "Change input source to U.S. by Right_Shift",
    "manipulators": [
        {
            "from": {
                "key_code": "right_shift",
                "modifiers": {
                    "optional": [
                        "any"
                    ]
                }
            },
            "to": [
                {
                    "select_input_source": {
                        "input_source_id": "^com\\.apple\\.keylayout\\.ABC$"
                    }
                }
            ],
            "type": "basic"
        }
    ]
}
```

