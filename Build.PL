use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new(
    module_name => 'Array::Diff',
    license     => 'perl',
    requires    => {
        'Class::Accessor::Fast' => 0,
        'Algorithm::Diff'       => 0,
    },
)->create_build_script;
