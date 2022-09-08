from rest_framework import views
from rest_framework.response import Response


class ExampleAPIView(views.APIView):

    def get(self, *args, **kwargs):
        return Response(data={'data': 'Hello docker django example 222'}, status=200)
