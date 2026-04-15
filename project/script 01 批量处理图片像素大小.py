from PIL import Image
import os

# -------------------------- 自定义参数（直接改这里） --------------------------
# 原图文件夹
INPUT_FOLDER = "./原图"
# 输出文件夹
OUTPUT_FOLDER = "./改好的图"

# 目标尺寸：宽度 × 高度（想怎么变形就填什么！）
TARGET_WIDTH = 1080    # 你要的宽度
TARGET_HEIGHT = 1980   # 你要的高度

# 图片质量 1-100
QUALITY = 90
# -----------------------------------------------------------------------------

def batch_resize_images():
    os.makedirs(OUTPUT_FOLDER, exist_ok=True)
    supported_formats = (".jpg", ".jpeg", ".png", ".bmp", ".webp")

    for filename in os.listdir(INPUT_FOLDER):
        if not filename.lower().endswith(supported_formats):
            continue

        input_path = os.path.join(INPUT_FOLDER, filename)
        output_path = os.path.join(OUTPUT_FOLDER, filename)

        try:
            with Image.open(input_path) as img:
                # 关键：直接强制缩放到你指定的尺寸，不保持比例
                new_size = (TARGET_WIDTH, TARGET_HEIGHT)
                resized_img = img.resize(new_size, Image.Resampling.LANCZOS)

                # 保存
                if filename.lower().endswith((".png", ".webp")):
                    resized_img.save(output_path, quality=QUALITY, optimize=True)
                else:
                    resized_img.save(output_path, quality=QUALITY, optimize=True, subsampling=0)

                print(f"✅ 处理完成：{filename} → {TARGET_WIDTH}x{TARGET_HEIGHT}")

        except Exception as e:
            print(f"❌ 失败：{filename} | {str(e)}")

if __name__ == "__main__":
    print("=== 批量强制缩放图片（可变形）===")
    batch_resize_images()
    print("\n🎉 全部处理完成！")
