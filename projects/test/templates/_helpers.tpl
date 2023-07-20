{{- define "version" -}}
{{- $v1 := index .root.helm_versions .chart .root.env  | default (index .root.helm_versions .chart "default") -}}
{{- $t := index .root.helm_versions .chart .root.env -}}
{{- if  $t -}}
{{- index .root.helm_versions .chart .root.env .root.dc | default (index .root.helm_versions .chart .root.env "default" | default (index .root.helm_versions .chart "default")) | quote -}}
{{- else -}}
{{ $v1 | quote }}
{{- end -}}
{{- end -}}
