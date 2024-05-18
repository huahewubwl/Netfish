import tkinter as tk

# 创建窗口
root = tk.Tk()
root.title("Read-only Transparent Text Box")

# 设置窗口透明度为部分透明
root.attributes("-alpha", 0.4)  

# 禁止用户拖动或改变窗口大小
root.overrideredirect(True)

# 创建Label组件显示文本并设置字体大小为 20
text = "待更新"

label = tk.Label(root, text=text, font=("Arial", 20))
label.pack()

# 设置窗口位置为任务栏左侧底部
root.update_idletasks()
root.withdraw()
root.geometry('+%d+%d' % (0, root.winfo_screenheight() - root.winfo_height()))
root.deiconify()

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

