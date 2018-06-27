from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime
from django.db.models import Q
from common.models import Users
import hashlib
from django.core.paginator import Paginator

# Create your views here.
def index(request,pIndex):
    '''浏览信息'''
    list = Users.objects.all()
    p = Paginator(list, 10)
    if pIndex == "":
        pIndex = 1
    list2 = p.page(pIndex)
    plist = p.page_range
    context = {"userslist":list2,"plist":plist,"pIndex":int(pIndex),"totalPages":p.num_pages,"preIndex":int(pIndex)-1,"nextIndex":int(pIndex)+1}
    return render(request,"myadmin/users/index.html",context)

def add(request):
    '''加载添加页面'''
    return render(request,"myadmin/users/add.html")

def insert(request):
    '''执行添加'''
    try:
        ob = Users()
        ob.username = request.POST['username']
        ob.name = request.POST['name']
        #获取密码并md5
        m = hashlib.md5() 
        m.update(bytes(request.POST['password'],encoding="utf8"))
        ob.password = m.hexdigest()
        ob.sex = request.POST['sex']
        ob.address = request.POST['address']
        ob.code = request.POST['code']
        ob.phone = request.POST['phone']
        ob.email = request.POST['email']
        ob.state = 1
        ob.addtime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        context={"info":"添加成功！"}
    except Exception as err:
        print(err)
        context={"info":"添加失败"}
    return render(request,"myadmin/info.html",context)

def delete(request,uid):
    '''删除信息'''
    try:
        ob = Users.objects.get(id=uid)
        ob.delete()
        context={"info":"删除成功！"}
    except Exception as err:
        print(err)
        context={"info":"删除失败"}
    return render(request,"myadmin/info.html",context)


def edit(request,uid):
    '''加载编辑信息页面'''
    try:
        ob = Users.objects.get(id=uid)
        context={"user":ob}
        return render(request,"myadmin/users/edit.html",context)
    except Exception as err:
        context={"info":"没有找到要修改的信息！"}
        return render(request,"myadmin/info.html",context)

def update(request,uid):
    '''执行编辑信息'''
    try:
        ob = Users.objects.get(id=uid)
        ob.name = request.POST['name']
        ob.sex = request.POST['sex']
        ob.address = request.POST['address']
        ob.code = request.POST['code']
        ob.phone = request.POST['phone']
        ob.email = request.POST['email']
        ob.state = request.POST['state']
        ob.save()
        context={"info":"修改成功！"}
    except Exception as err:
        print(err)
        context={"info":"修改失败"}
    return render(request,"myadmin/info.html",context)


def resetpassword(request, uid):
    '''重置用户密码'''
    try:
        ob = Users.objects.get(id=uid)
        context={"user":ob}
        return render(request,"myadmin/users/resetpwd.html",context)
    except Exception as err:
        context={"info":"没有找到要修改的信息！"}
        return render(request,"myadmin/info.html",context)


def updatepwd(request):
    '''更新用户密码'''
    password = request.POST['password']
    repassword = request.POST['repassword']
    if password != repassword:
        context={"info":"密码输入不一致，请重试！"}
    else:
        uid = request.POST["uid"]
        try:
            ob = Users.objects.get(id=uid)
            m = hashlib.md5() 
            m.update(bytes(request.POST['password'],encoding="utf8"))
            ob.password = m.hexdigest()
            ob.save()
            context={"info":"修改成功！"}
        except Exception as err:
            context={"info":"没有找到要修改的信息！"}
    return render(request,"myadmin/info.html",context)


def query(request):
    '''用户查询，结果隐藏分页'''
    name = request.POST["name"]
    sex = request.POST["sex"]
    if sex == "":
        list = Users.objects.filter(Q(name__contains = name) | Q(username__contains = name))
    else:
        list = Users.objects.filter((Q(name__contains = name) | Q(username__contains = name)) & Q(sex__exact = sex))
    context = {"userslist":list,"showPager":"no","name":name,"sex":sex,"plist":"","pIndex":1,"totalPages":1,"preIndex":1,"nextIndex":1}
    return render(request,"myadmin/users/index.html",context)