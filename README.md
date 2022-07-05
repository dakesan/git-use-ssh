# git-use-ssh.zsh

## About

Fix "remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead." error.

This is caused by `.git/config` file, remote protocol using https even if you have successfully set up sshkey.

This plugin simply replaces "https://github.com/" to "git@github.com:" inside your git directory.

## Usage

```bash
gitusessh
```

## Option

To save the original config file, use `-b` option.

```bash
gitusessh -b
```

## License

MIT