from django.shortcuts import render
from django.http import request
from django.http import HttpResponse


# Create your views here.

def index(request):
    return render(request,"Index.html" )

def contato(request):
    return render(request,"contato.html")

def cursos(request):
    return render(request,"cursos.html")

def noticias(request):
    return render(request,"noticias.html")

def novocurso(request):
    return render(request,"novocurso.html")

def ads(request):
    return render(request,"ads.html")

def esquecisenha(request):
    return render(request,"esquecisenha.html"),

def login(request):
    return render(request,"login.html"),

def novousu(request):
    return render(request,"novousu.html")