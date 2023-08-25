resource "snowmirror_setting" "settings" {
  options = {
    "snowMirror.activityLog.debugLog" = "false",
    "snowMirror.activityLog.traceLog" = "false",
    "snowMirror.security.showVersion" = "false",
    "snowMirror.security.showServiceNowUrls" = "false",
    "snowMirror.security.showSystemInfoOnErrorPages" = "false",
    "snowMirror.security.showExceptionOnErrorPages" = "false",
    "snowMirror.security.rememberMeEnabled" = "false"
  }
}
