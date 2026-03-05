import functools

def milk(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):

        name = kwargs.get("name") or (args[0] if args else "顾客")

        print("🥛 咖啡机里只有牛奶，如果你不介意可以按enter来一杯热牛奶")

        input()

        print(f"{name} 点了一杯热牛奶")

        print("☕ 咖啡机启动")

        result = func(*args, **kwargs)

        print("🥛 热牛奶制作完成")

        return result

    return wrapper


@milk
def order(name, sugar):
    print(f"{name} 点了一杯牛奶，糖：{sugar}")
    return "牛奶完成"


result = order(name="Alice", sugar="少糖")

print(result)
