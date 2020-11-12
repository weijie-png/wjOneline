import xadmin
from django.urls import path,include,re_path
from django.views.static import serve
from wjOneline.settings import MEDIA_ROOT
from apps.users.views import LoginView,RegisterView,ActiveUserView,ForgetPwdView,ResetView,ModifyPwdView
from django.views.generic import TemplateView


urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    path('',TemplateView.as_view(template_name='index.html'),name='index'),
    path('login/',LoginView.as_view(),name = 'login'),
    path('register/',RegisterView.as_view(),name='register'),
    path('captcha/',include('captcha.urls')),
    re_path('active/(?P<active_code>.*)/',ActiveUserView.as_view(),name='user_active'),
    path('forget/',ForgetPwdView.as_view(),name='forget_pwd'),
    re_path('reset/(?P<active_code>.*)/',ResetView.as_view(),name='reset_pwd'),
    path('modify_pwd/',ModifyPwdView.as_view(),name='modify_pwd'),
    path('org/',include('apps.organization.urls',namespace='org')),
    re_path(r"^media/(?P<path>.*)",serve,{"document_root":MEDIA_ROOT}),
    path('course/',include('apps.course.urls',namespace='course')),
    # 个人信息
    path('users/',include('apps.users.urls',namespace='users')),
]
