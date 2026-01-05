local flexoki = import 'lib/flexoki.libsonnet';
{
  ["palette-dark.json"]: std.manifestJson(flexoki.Dark),
  ["palette-light.json"]: std.manifestJson(flexoki.Light),
}
