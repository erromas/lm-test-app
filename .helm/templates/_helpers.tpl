{{- define "nginx_resources" }}
resources:
   requests:
     cpu: {{ first (pluck .Values.global.env .Values.resources.nginx.requests.cpu) | default .Values.resources.nginx.requests.cpu._default | quote }}
     memory: {{ first (pluck .Values.global.env .Values.resources.nginx.requests.memory) | default .Values.resources.nginx.requests.memory._default | quote }}
   limits:
     cpu: {{ first (pluck .Values.global.env .Values.resources.nginx.limits.cpu) | default .Values.resources.nginx.limits.cpu._default | quote }}
     memory: {{ first (pluck .Values.global.env .Values.resources.nginx.limits.memory) | default .Values.resources.nginx.limits.memory._default | quote }}
{{- end }}
