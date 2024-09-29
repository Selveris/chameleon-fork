const std = @import("std");
const cham = @import("chameleon").initComptime();

pub fn main() !void {
    const header = comptime cham.underline().bold().italic().blink();

    std.debug.print("\t\t  {s}{s}{s}{s}{s}{s}{s}{s}{s}\n\n", .{
        comptime header.green().apply("C"),
        comptime header.red().apply("H"),
        comptime header.blue().apply("A"),
        comptime header.magenta().apply("M"),
        comptime header.yellow().apply("E"),
        comptime header.green().apply("L"),
        comptime header.yellow().apply("E"),
        comptime header.cyan().apply("O"),
        comptime header.magenta().apply("N"),
    });
    std.debug.print("{s} {s} {s} {s} {s} {s}\n{s} {s} {s} {s} {s} {s} {s} {s}\n{s} {s} {s} {s} {s} {s}\n", .{
        comptime cham.bold().apply("bold"),
        comptime cham.dim().apply("dim"),
        comptime cham.italic().apply("italic"),
        comptime cham.underline().apply("underline"),
        comptime cham.inverse().apply("inverse"),
        comptime cham.strikethrough().apply("strikethrough"),
        comptime cham.red().apply("red"),
        comptime cham.green().apply("green"),
        comptime cham.yellow().apply("yellow"),
        comptime cham.blue().apply("blue"),
        comptime cham.magenta().apply("magenta"),
        comptime cham.cyan().apply("cyan"),
        comptime cham.white().apply("white"),
        comptime cham.gray().apply("gray"),
        comptime cham.bgRed().apply("bgRed"),
        comptime cham.bgGreen().apply("bgGreen"),
        comptime cham.bgYellow().apply("bgYellow"),
        comptime cham.bgBlue().apply("bgBlue"),
        comptime cham.bgMagenta().apply("bgMagenta"),
        comptime cham.bgCyan().apply("bgCyan"),
    });
}
