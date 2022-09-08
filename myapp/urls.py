from django.urls import path

from myapp.views import ExampleAPIView

urlpatterns = [
    path("example/", ExampleAPIView.as_view(), name="example"),
]
