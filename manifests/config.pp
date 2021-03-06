# == Class: libvirt::config
#
# Installs configuration files
class libvirt::config inherits libvirt {

  if ($libvirt::qemu_hook) {
    file {"${libvirt::params::config_dir}/hooks/qemu":
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => "puppet:///modules/libvirt/hooks/qemu/${libvirt::qemu_hook}",
    }
  }
}
