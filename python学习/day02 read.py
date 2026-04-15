import sys


def main():
    """主函数：处理用户交互并按格式写入文件"""

    # 1. 检查命令行参数len(sys.argv) != 2：sys.argv[0] 是脚本名，就是monesy.py
    if len(sys.argv) != 2:
        print("❌ 参数错误！正确用法：")
        print(f"python {sys.argv[0]} <文件保存路径>")
        sys.exit(1)

    save_file_path = sys.argv[1]
    prompt_symbol = ">> "
    band_name = "Mujica"

    # 定义角色列表，方便后续循环处理
    roles = ["三角初华", "八幡海玲", "丰川祥子", "若叶睦", "立希"]
    #如果想增加乐队成员，只需在第 18 行的 roles 列表中添加名字，后续所有逻辑会自动适应。
  
# 2. 确认操作
    print(f"\n⚠️ {band_name} 即将爆炸！")
    print("如果不想要爆炸，按 Ctrl+C 取消；如果确认，按回车键继续。")
    try:
        input(f"{prompt_symbol}确认：")
    except KeyboardInterrupt:
        print("\n👋 操作已取消。")
        sys.exit(0)

    # 3. 获取用户输入的台词并存储
    print("\n📝 请输入各角色的台词：")
    user_lines = {}
    for role in roles:
        content = input(f"{prompt_symbol}{role}：")
        user_lines[role] = content

    # 4. 写入文件
    try:
        with open(save_file_path, 'w', encoding='utf-8') as file:
            for role, line in user_lines.items():
                #.items() 并不是变量名的一部分，它是 Python 字典（Dictionary）对象自带的一个内置方法（Method）。
                # 拼接格式：“角色名：内容”
                formatted_line = f"{role}：{line}\n"
                file.write(formatted_line)

        print(f"\n✅ 成功！内容已写入文件：{save_file_path}")
        print(f"💥 {band_name} is explode!")

    except Exception as e:
        print(f"\n❌ 写入失败！错误原因：{e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
