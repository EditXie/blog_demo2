from django.contrib import admin
from blog.models import *

# Register your models here.

class ArticleAdmin(admin.ModelAdmin):

    list_display = ('id', 'title', 'desc', 'click_count',)
    list_display_links = ('title', 'desc', )
    list_editable = ('click_count',)

    fieldsets = (
        (None, {
            'fields': ('title', 'desc', 'content', 'user', 'category', 'tag', )
        }),
        ('高级设置', {
            'classes': ('collapse',),
            'fields': ('click_count', 'is_recommend',)
        }),
    )

    class Media:
        js = (
            '/static/js/kindeditor/kindeditor-all-min.js',
            '/static/js/kindeditor/lang/zh_CN.js',
            '/static/js/kindeditor/config.js',
            '/static/js/kindeditor/themes/default/default.css',
        )

class AdAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'description', 'date_publish', 'image_url')
    list_editable = ('image_url',)

admin.site.register(User)
admin.site.register(Tag)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Category)
admin.site.register(Comment)
admin.site.register(Links)
admin.site.register(Ad, AdAdmin)