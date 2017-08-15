About
=====
Silver Fox 安装文档	
QQ交流群号：453400664

	#希望每一个使用者点赞与给出相应的意见
	#Author：GuiJiaoQi_/20161212     

	Python版本升级
 
	配套软件版本
	升级到python2.7
	Django version 1.8.17
	MySQL version 5.6.27
	Start Upgrade Python Version
	yum install -y zlib-devel zlib bzip2-devel xz-libs xz wget git tar gcc gcc-c++ gcc* openssl openssl-devel pcre-devel python-devel libevent automake autoconf libtool make

	一.安装Python 2.7.10
	1.下载
	
		wget http://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz
		2.解压
		tar xf Python-2.7.10.tar
		3.编译/安装
		首先要新建一个目录，用来作为Python2.7.10的安装目录
		mkdir /usr/local/python2.7
		然后开始编译
		cd Python-2.7.10 #进入解压后的Python目录
		./configure --prefix=/usr/local/python2.7 #等待编译完成
		make && make install #等待安装
		到这里Python2.7.10就算是安装完成了，但是现在在命令行输入 Python  看到的版本仍然还是2.6.6：那接着往下做：
		vim /root/.bash_profile
		PATH=/usr/local/python2.7/bin:$PATH:$HOME/bin
		export PATH
		source ~/.bash_profile
		现在命令行输入 python 看到的版本是不是 2.7.10 了！！！(如果不行自行解决)
		
	二、安装setuptools
		wget https://pypi.Python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg  --no-check-certificate 
		如果报错zipimport.ZipImportError: can't decompress data; zlib not available错误
		如果重新编译python2.7.10(yum install -y zlib-devel zlib)
		chmod +x setuptools-0.6c11-py2.7.egg
		sh setuptools-0.6c11-py2.7.egg
				
		如果报错尝试    
		https://pypi.python.org/packages/source/s/setuptools/setuptools-0.6c11.tar.gz
		tar zxvf setuptools-0.6c11.tar.gz
		cd setuptools-0.6c11
		python setup.py install
		
	三、安装pip
		wget "https://pypi.python.org/packages/source/p/pip/pip-1.5.4.tar.gz#md5=834b2904f92d46aaa333267fb1c922bb" --no-check-certificate
		tar -xzvf pip-1.5.4.tar.gz
		 cd pip-1.5.4 
		python setup.py install
		
	四、安装MySQL驱动
		yum install mysql-devel python-setuptools python-devel libxml2 libxml2-dev  libpcre3 libpcre3-dev python-MySQLdb -y
		tar xf  MySQL-python-1.2.3.tar.gz
		cd MySQL-python-1.2.3
		python setup.py build
		python setup.py install

	五、Start Django install
		tar xf Django-1.8.17.tar.gz
		cd Django-1.8.17
		python setup.py install

		python
		>>>import django
		创建一个工程
		cd ~
		创建工程名为black_hand（黑手）
		django-admin.py startproject black_hand
		新增应用（银狐）
		django-admin.py startapp silver_fox	
		修改settings.py（cd ~/black_hand/black_hand）
		修改时区
		TIME_ZONE = 'Asia/Shanghai'
		修改databases配置
		DATABASES = {
		    'default': {
			'ENGINE': 'django.db.backends.mysql',
			'NAME': 'django',
			'USER': 'root',
			'PASSWORD': 'root',
			'HOST': '127.0.0.1',
			'PORT': '3306',
		    }
		}
		MIDDLEWARE_CLASSES 中注释掉如下参数
		'django.middleware.csrf.CsrfViewMiddleware',

		TEMPLATES = [
					 {
				 'BACKEND': 'django.template.backends.django.DjangoTemplates',
				 'DIRS': [os.path.join(BASE_DIR, 'templates')],
					'APP_DIRS': True,
				 'OPTIONS': {
					 'context_processors': [
					  'django.template.context_processors.debug',
					  'django.template.context_processors.request',
					  'django.contrib.auth.context_processors.auth',
					   'django.contrib.messages.context_processors.messages',
						  ],},},]
		
		INSTALLED_APPS = (
					    'django.contrib.admin',
					    'django.contrib.auth',
					    'django.contrib.contenttypes',
					    'django.contrib.sessions',
					    'django.contrib.messages',
					    'django.contrib.staticfiles',
					    #'sliver_fox',
					    'silver_fox',
					)

		#Add databses import db_schema
		mysql –uroot –proot –e 'create database django '
		mysql –uroot –proot django –e 'source django_20161212_schema.sql '

		如果直接启动正常就无需执行python manage.py migrate

		同步db表信息到model
		python ../manage.py inspectdb >model.py

		把github中下载的black_hand直接替换到django中新增的black_hand目录即可

		开启django
		nohup /usr/local/python2.7/bin/python2.7 manage.py runserver 0.0.0.0:8000 --insecure  & 
		
		#ipaddress 为django主机IP		
		访问WEB页面 http://ipaddress:8000/login.html
		登陆用户密码都是GuiJiaoQi/GuiJiaoQi
