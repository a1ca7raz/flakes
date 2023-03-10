{ ... }:
{
  xdg.configFile.fcitx5_conf_classicui = {
    target = "fcitx5/conf/classicui.conf";
    text = ''
      # 垂直候选列表
      Vertical Candidate List=False
      # 按屏幕 DPI 使用
      PerScreenDPI=False
      # 使用鼠标滚轮翻页
      WheelForPaging=True
      # 字体
      Font="Source Han Sans SC 11"
      # 菜单字体
      MenuFont="Source Han Sans SC 10"
      # 使用输入法的语言来显示文字
      UseInputMethodLangaugeToDisplayText=True
      # 主题
      Theme=Material-Color
    '';
  };
}