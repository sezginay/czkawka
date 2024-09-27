build_all:
    cargo build --release
    cargo build
    cargo clippy
    cargo test

## run

czkawka:
    RUST_BACKTRACE=1 cargo run --bin czkawka_gui
czkawka_r:
    RUST_BACKTRACE=1 cargo run --bin czkawka_gui --release

krokiet:
    RUST_BACKTRACE=1 cargo run --bin krokiet
krokiet_r:
    RUST_BACKTRACE=1 cargo run --bin krokiet --release
krokiet_dark:
    RUST_BACKTRACE=1 SLINT_STYLE=fluent-dark cargo run --bin krokiet

cli:
    RUST_BACKTRACE=1 cargo run --bin czkawka_cli
cli_r:
    RUST_BACKTRACE=1 cargo run --bin czkawka_cli --release
cli_help:
    cargo run --bin czkawka_cli -- --help

## Other

build:
    cargo build --bin czkawka_gui

check:
    cargo check --bin czkawka_gui

check_all:
    cargo check


build_krokiet:
    cargo build --bin krokiet

build_czkawka:
    cargo build --bin czkawka_gui

upgrade:
    cargo upgrade -i
    cargo update

fix:
    cargo +nightly fmt
    cargo clippy --fix --allow-dirty --allow-staged -- -Wclippy::pedantic -Aclippy::default_trait_access -Aclippy::cast_possible_truncation -Aclippy::must_use_candidate -Aclippy::missing_panics_doc -Aclippy::too_many_lines -Aclippy::cast_precision_loss -Aclippy::cast_sign_loss -Aclippy::module_name_repetitions -Aclippy::struct_excessive_bools -Aclippy::cast_possible_wrap -Aclippy::cast_lossless -Aclippy::if_not_else -Aclippy::wildcard_imports -Aclippy::return_self_not_must_use -Aclippy::missing_errors_doc -Aclippy::match_wildcard_for_single_variants -Aclippy::assigning_clones -Aclippy::unused_self -Aclippy::manual_is_variant_and -Aclippy::new_without_default
    cargo +nightly fmt

clippy_nightly:
    cargo clippy -- -Wclippy::pedantic -Aclippy::default_trait_access -Aclippy::cast_possible_truncation -Aclippy::must_use_candidate -Aclippy::missing_panics_doc -Aclippy::too_many_lines -Aclippy::cast_precision_loss -Aclippy::cast_sign_loss -Aclippy::module_name_repetitions -Aclippy::struct_excessive_bools -Aclippy::cast_possible_wrap -Aclippy::cast_lossless -Aclippy::if_not_else -Aclippy::wildcard_imports -Aclippy::return_self_not_must_use -Aclippy::missing_errors_doc -Aclippy::match_wildcard_for_single_variants -Aclippy::assigning_clones -Aclippy::unused_self -Aclippy::manual_is_variant_and -Aclippy::new_without_default

    # To re-enable
    # if_not_else
    # unused_self
    # manual_is_variant_and - generated by slint code
    # new_without_default