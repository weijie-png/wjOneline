import xadmin
from apps.users.models import UserProfile
from xadmin import views


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    site_title = "在线教育后台管理系统"
    site_footer = 'Powered By 1906C - 2020'
    menu_style = 'accordion'


xadmin.site.register(views.CommAdminView,GlobalSettings)
xadmin.site.register(views.BaseAdminView,BaseSetting)


class UserProfileAdmin(object):
    list_display = ['username','gender','mobile','address']
    search_fields = ['username','gender','mobile','address']
    list_filter = ['username','gender','mobile','address']
    model_icon = 'fa fa-user'
    style_fields = {'address':'ueditor'}
    ordering = ['date_joined']
    readonly_fields = ['nick_name']
    exclude = ['gender']
    list_editable = ['mobile']
    refresh_times = [3,5]


xadmin.site.unregister(UserProfile)
xadmin.site.register(UserProfile,UserProfileAdmin)