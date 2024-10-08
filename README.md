# Godot Plugin/GDExtension Demo Project
This is a demo project I did for my talk "Building a Godot Addon" at the [JetBrains GameDev Days 2024](https://lp.jetbrains.com/gamedev-days-2024).

It showcases two otions for addons:

1. A simple Godot project that uses a GDScript module to add a new main screen panel to the editor.
2. A simple Godot project that uses a custom GDExtension plugin to add a new node type to the engine.

### Prerequisites
- Godot Engine 4.3 or later
- Python 3.6 or later
- Pip 24.0 or later
- SCons 4.8.0 or later
- C++17 compatible compiler (Visual Studio 2019, GCC 8, Clang 6)

## Plugin
You can find the Plugin in the `addons/demo_guide` folder.
It creates a main screen panel with two buttons to add/removes an Editor Tool menu item.

## GDExtension
The GDExtension has a few more components to it:

1. `/Sconstruct`: The build script for the GDExtension.
2. `/src`: The source code for the GDExtension.
3. `godot-cpp`: The Godot C++ bindings as a git submodule.
2. Binaries are compiled into: `addons/demo_gdextension` folder. This is also where the `gdextension.gd` file is located, which lets the Editor know about the GDExtension.

### Building
Run `scons platform=windows` to build the GDExtension for Windows. You can also build for other platforms by changing the `platform` parameter.

## GitHub Actions
This project has a GitHub Actions workflow that packages and deploys the Plugin to the Godot Asset Library.
It needs some configuration, which you can easily do by updating the environment variables in workflow.

The `.asset-template.json.hbs` file is a template for the asset metadata that is used the workflow to upload to the Asset Library. Please update it with your own Icon. The rest of the metadata will be inferred from the GitHub Actions context.