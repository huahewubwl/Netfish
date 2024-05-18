import tkinter as tk

# 创建窗口
root = tk.Tk()
root.title("Read-only Transparent Text Box")

# 设置窗口透明度为部分透明
root.attributes("-alpha", 0.4)  

# 禁止用户拖动或改变窗口大小
root.overrideredirect(True)

# 创建Label组件显示文本并设置字体大小为 20
text = "请进行网络Web验证 请勿关闭命令提示符 连接成功后自动重启 方可使用电脑-------------------------------------------------------------------------------------"

label = tk.Label(root, text=text, font=("Arial", 20))
label.pack()

# 定时器，将窗口透明度变为完全透明
def set_complete_transparency():
    root.attributes("-alpha", 0.0)
    # 设置定时器，延迟3秒后恢复半透明状态
    root.after(3000, set_partial_transparency)

# 定时器，将窗口透明度恢复为半透明
def set_partial_transparency():
    root.attributes("-alpha", 0.4)

# 设置定时器，延迟3秒后执行透明度变化函数
root.after(3000, set_complete_transparency)

# 运行窗口
root.mainloop()

