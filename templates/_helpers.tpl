{{- define "shared-helm.fullname" -}}
{{ .Release.Name }}-shared-helm
{{- end -}}

{{- define "shared-helm.selectorLabels" -}}
app.kubernetes.io/name: {{ include "shared-helm.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "shared-helm.name" -}}
shared-helm
{{- end -}}
