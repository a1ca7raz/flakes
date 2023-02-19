{ ... }:
{
  xdg.configFile.fcitx5_config = {
    target = "fcitx5/config";
    text = ''
      [Hotkey]
      # 反复按切换键时进行轮换
      EnumerateWithTriggerKeys=True
      # 轮换输入法时跳过第一个输入法
      EnumerateSkipFirst=False

      [Hotkey/TriggerKeys]
      0=Alt+Shift+Shift_L
      1=Zenkaku_Hankaku
      2=Hangul

      [Hotkey/AltTriggerKeys]
      0=Shift_L

      [Hotkey/EnumerateForwardKeys]
      0=Control+Shift_L

      [Hotkey/EnumerateBackwardKeys]
      0=Control+Shift_R

      [Hotkey/EnumerateGroupForwardKeys]
      0=Super+space

      [Hotkey/EnumerateGroupBackwardKeys]
      0=Shift+Super+space

      [Hotkey/ActivateKeys]
      0=Hangul_Hanja

      [Hotkey/DeactivateKeys]
      0=Hangul_Romaja

      [Hotkey/PrevPage]
      0=Up

      [Hotkey/NextPage]
      0=Down

      [Hotkey/PrevCandidate]
      0=Shift+Tab

      [Hotkey/NextCandidate]
      0=Tab

      [Hotkey/TogglePreedit]
      0=Control+Alt+P

      [Behavior]
      # 默认状态为激活
      ActiveByDefault=False
      # 共享输入状态
      ShareInputState=Program
      # 在程序中显示预编辑文本
      PreeditEnabledByDefault=True
      # 切换输入法时显示输入法信息
      ShowInputMethodInformation=True
      # 在焦点更改时显示输入法信息
      showInputMethodInformationWhenFocusIn=False
      # 显示紧凑的输入法信息
      CompactInputMethodInformation=True
      # 显示第一个输入法的信息
      ShowFirstInputMethodInformation=True
      # 默认页大小
      DefaultPageSize=5
      # Force Enabled Addons
      EnabledAddons=
      # Force Disabled Addons
      DisabledAddons=
      # Preload input method to be used by default
      PreloadInputMethod=True
    '';
  };
}