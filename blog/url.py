#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Created on 2018/3/1 22:07
@author: Edit Xie
@file: url.py.py
功能描述：

"""
from django.conf.urls import url
from blog.views import *

urlpatterns = [
    url(r'^$', index, name='index'),
    url(r'^category/$', category, name='category'),
    url(r'^article/$', article, name='article'),
    url(r'^archive/$', archive, name='archive'),
    url(r'^comment/post/$', comment_post, name='comment_post'),
    url(r'^login', do_login, name='login'),
    url(r'^logout$', do_logout, name='logout'),
    url(r'^reg', do_reg, name='reg'),
    url(r'^tag/$', tag, name='tag'),
]
