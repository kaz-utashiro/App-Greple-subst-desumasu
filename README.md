# NAME

App::Greple::subst::desumasu - Japanese DESU/MASU dictionary for App::Greple::subst

# SYNOPSIS

    greple -Msubst::desumasu --dearu --subst --all file

    greple -Msubst::desumasu --dearu --diff file

    greple -Msubst::desumasu --dearu --replace file

# DESCRIPTION

greple -Msubst module based on
[desumasu-converter](https://github.com/kssfilo/desumasu-converter).

This is a simple checker/converter module for Japanese writing style
so called DUSU/MASU (ですます調: 敬体) and DEARU (である調: 常態).
This is not my own idea and the dictionary is based on
[https://github.com/kssfilo/desumasu-converter](https://github.com/kssfilo/desumasu-converter).

See article [https://kanasys.com/tech/722](https://kanasys.com/tech/722) for detail.

# OPTIONS

- **--dearu**
- **--dearu-n**
- **--dearu-N**

    Convert DESU/MASU to DEARU style.

    DESU (です) and MASU (ます) sometimes followed by NE (ね) in frank
    situation, and that NE (ね) is removed from converted result by
    default.  Option with **-n** keep that NE (ね), and option with **-N**
    igonore them.

- **--desumasu**
- **--desumasu-n**
- **--desumasu-N**

    Convert DEARU to DESU/MASU style.

Use them with **greple** **-Msubst** options.

- **--subst --all --no-color**

    Print converted text.

- **--diff**

    Produce diff output of original and converted text.  Use **cdif**
    command in [App::sdif](https://metacpan.org/pod/App::sdif) to visualize the difference.

- **--create**
- **--replace**
- **--overwrite**

    To update the file, use these options.  Option **--create** make new
    file with `.new` suffix.  Option **--replace** update the target file
    with backup, while option **--overwrite** does without backup.

See [App::Greple::subst](https://metacpan.org/pod/App::Greple::subst) for other options.

# INSTALL

## CPANMINUS

From GIT repository:

    cpanm https://github.com/kaz-utashiro/greple-subst-desumasu.git

# SEE ALSO

[App::Greple](https://metacpan.org/pod/App::Greple), [App::Greple::subst](https://metacpan.org/pod/App::Greple::subst)

[App::sdif](https://metacpan.org/pod/App::sdif)

[https://github.com/kssfilo/desumasu-converter](https://github.com/kssfilo/desumasu-converter),
[https://kanasys.com/tech/722](https://kanasys.com/tech/722)

# AUTHOR

Kazumasa Utashiro

# LICENSE

Copyright 2021 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
