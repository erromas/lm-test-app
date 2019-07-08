{{- define "nginx_envs" }}
- name: REST_PORT
  value: {{ pluck .Values.global.env .Values.app.nginx.rest_port | first | default .Values.app.nginx.rest_port._default | quote }}
{{- end }}