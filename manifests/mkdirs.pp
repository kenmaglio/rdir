#
#
#
define toolbox::mkdirs (
  $path = $title,
  $ensure = directory,
  $spliton = '/',
) {

  if (!$path) {
    fail('path must be provided')
  }

  # split and define first element as drive
  $folders = split($path, $spliton)
  $drive = $folders[0] #should be empty string for linux; windows eg. C:

  $folders.each |$index, $folder| {
    $calculated_folder = inline_template("<%= @folders[1, @index + 1].join('/') %>")
    $full_path = "${drive}/${calculated_folder}"
    #handle not ensuring File on C:
    if (! defined(File[$full_path]) and $full_path != $drive) {
      file { $full_path :
        ensure => $ensure,
      }
    }
  }
}