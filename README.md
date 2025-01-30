<div align="center">
    <h1>zsh-pre-commit-autocomplete</h1>
    <p> Enhancing your <a href="https://pre-commit.com/ ">pre-commit</a> experience with seamless hook autocompletion🎢 </p>
</div>

****

> Since `pre-commit` does not support autocompletion ([reference](https://github.com/pre-commit/pre-commit/issues/1119)), and the [`oh-my-zsh` pre-commit plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pre-commit) only provides aliases for common commands. <br>
> This plugin enhances usability by offering autocompletion for the `run` command, listing all available hooks.

## Features

- Autocompletion for the `pre-commit run` command.
- Lists all hooks available in the `.pre-commit-config.yaml` file.

## Usage

> This demo uses Apache Airflow as an example.

<a href="https://www.youtube.com/watch?v=sicuLWWfRAo&ab_channel=ZhuDev" target="_blank">
 <img src="https://raw.githubusercontent.com/jason810496/zsh-pre-commit-autocomplete/refs/heads/main/assets/zsh-pre-commit-autocomplete-demo.png" alt="demo" height="550" />
</a>

## Installation

### Oh My Zsh

1. Clone the repository into the custom plugins directory:

    ```sh
    git clone --depth=1 https://github.com/jason810496/zsh-pre-commit-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-pre-commit-autocomplete
    ```

2. Add the plugin to the list of plugins to load in `~/.zshrc`:

    ```sh
    plugins=(
        # other plugins...
        zsh-pre-commit-autocomplete
    )
    ```

3. Restart your terminal.

### Manual Installation

1. Clone the repository into a directory of your choice:

    ```sh
    git clone --depth=1 https://github.com/jason810496/zsh-pre-commit-autocomplete ~/.zsh/zsh-pre-commit-autocomplete
    ```

2. Add the following line to your `~/.zshrc`:

    ```sh
    source ~/.zsh/zsh-pre-commit-autocomplete/zsh-pre-commit-autocomplete.zsh
    ```

3. Restart your terminal.

## License

This project is licensed under the MIT License.

