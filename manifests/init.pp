
class centreon (
	$clapi_binaries,
	$clapi_username,
	$clapi_password,
	$clapi_export_file,
	$clapi_log_file,
	$poller_name,
  include centreon::server, centreon::client, centreon::packages
}
