const std = @import("std");

pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{
        .name = "license",
        .root_source_file = .{ .cwd_relative = "src/main.zig" },
        .optimize = .ReleaseSmall,
        .target = b.graph.host,
    });
    
    exe.linkLibC();

    b.installArtifact(exe);
}
