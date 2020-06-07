from django.contrib.sessions.models import Session
from rest_framework_simplejwt import authentication
from django.http import JsonResponse


class SingleSessionLoginMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response
    def unauthorized_response(self, request):
        return JsonResponse({'error': 'Some error'}, status=401)

    def __call__(self, request):
        autheh = authentication.JWTAuthentication().authenticate(request)
        if autheh is not None:
            request.user = autheh[0]
            stored_session_key = request.user.logged_in_user.session_key
            if stored_session_key and stored_session_key != request.headers.get('Authorization').replace("Bearer ",""):
                return self.unauthorized_response(request)
            request.user.logged_in_user.session_key = request.headers.get('Authorization').replace("Bearer ","")
            request.user.logged_in_user.save()
        response = self.get_response(request)
        return response