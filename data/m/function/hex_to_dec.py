def hex_to_rgb(hex_color):
    hex_color = hex_color.lstrip("#")
    return tuple(int(hex_color[i:i+2], 16) for i in (0, 2, 4))


def rgb_to_decimal(rgb):
    r, g, b = rgb
    return r * 256**2 + g * 256 + b


def gradient(start_rgb, end_rgb, steps):
    colors = []
    for i in range(steps):
        t = i / (steps - 1)
        r = int(start_rgb[0] + (end_rgb[0] - start_rgb[0]) * t)
        g = int(start_rgb[1] + (end_rgb[1] - start_rgb[1]) * t)
        b = int(start_rgb[2] + (end_rgb[2] - start_rgb[2]) * t)
        colors.append((r, g, b))
    return colors


def white_color_black_gradient_decimal(middle_hex, total_steps=100):
    white = (255, 255, 255)
    black = (0, 0, 0)
    middle = hex_to_rgb(middle_hex)

    first_half = total_steps // 2
    second_half = total_steps - first_half

    part1 = gradient(white, middle, first_half)
    part2 = gradient(middle, black, second_half)

    full_gradient = part1 + part2[1:]

    return [rgb_to_decimal(rgb) for rgb in full_gradient]


# ---- RUN ----
user_color = input("Enter middle HEX color (example: #FFC1C6): ")
gradient_list = white_color_black_gradient_decimal(user_color, 101)

for value in gradient_list:
    print(value)
print(gradient_list)