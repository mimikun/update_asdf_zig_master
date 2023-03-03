function update_asdf_zig_master --description 'Update asdf-zig master'
    set VERSION (zig version)
    set NEW_VERSION (curl -sSL https://ziglang.org/download/index.json | jq .master.version --raw-output)
    if test $VERSION != $NEW_VERSION
        echo "zig (latest)master found!"
        asdf uninstall zig master
        asdf install zig master
    else
        echo "zig (latest)master is already installed"
        echo "version: $VERSION"
    end
end
