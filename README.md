# NAME

App::Greple::subst::desumasu - Japanese DESU/MASU dictionary for App::Greple::subst

# SYNOPSIS

    greple -Msubst::desumasu

# DESCRIPTION

greple -Msubst module based on [desumasu-converter](https://metacpan.org/pod/desumasu-converter).

This is a simple checker/converter module for Japanese writing style
so called DUSU/MASU (ですます調: 敬体) and DEARU (である調: 常態).
This is not my own idea and the dictionary is based on:

    L<https://github.com/kssfilo/desumasu-converter>

See article [https://kanasys.com/tech/722](https://kanasys.com/tech/722) for detail.

# OPTIONS

- **--desumasu**
- **--desumasu-n**
- **--desumasu-N**

    Convert DESU/MASU to DEARU style.

    です and ます sometimes followed by ね (NE), and that ね is removed
    from converted result by default.  Option with **-n** keep that ね, and
    option with **-N** igonore them.

- **--dearu**
- **--dearu-n**
- **--dearu-N**

    Convert DEARU to DESU/MASU style.

See [App::Greple::subst](https://metacpan.org/pod/App::Greple::subst) for other options.

# SEE ALSO

[App::Greple::subst](https://metacpan.org/pod/App::Greple::subst)

# AUTHOR

Kazumasa Utashiro

# LICENSE

Copyright 2021 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
